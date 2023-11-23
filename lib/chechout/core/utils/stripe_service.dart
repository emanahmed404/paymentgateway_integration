import 'package:checkoutapp/chechout/core/utils/api_constatns.dart';
import 'package:checkoutapp/chechout/core/utils/api_services.dart';
import 'package:checkoutapp/chechout/data/models/ephemeral_key_%20model.dart';
import 'package:checkoutapp/chechout/data/models/init_payment_sheet_model.dart';
import 'package:checkoutapp/chechout/data/models/payment_intent_input.dart';
import 'package:checkoutapp/chechout/data/models/payment_intent_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<PaymentIntentResponseModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: "https://api.stripe.com/v1/payment_intents",
        token: ApiConstants.secretKey);
    var paymentIntentResponseModel =
        PaymentIntentResponseModel.fromJson(response.data);
    return paymentIntentResponseModel;
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
       var response = await apiService.post(
        body: {
          'customer': customerId,
        },
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        token: ApiConstants.secretKey,
        headers: {
          "Authorization": "Bearer ${ApiConstants.secretKey}",
          'Stripe-Version': '2023-10-16',
        });
    var ephemeralKeyModel = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyModel;
  }

  Future<void> initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: initPaymentSheetInputModel.clientSecretKey,
        customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKey,
        customerId: initPaymentSheetInputModel.customerId,
        merchantDisplayName: 'EmaStore ',
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);
    var initPaymentIntentSheetModel = InitPaymentSheetInputModel(
        customerId: paymentIntentInputModel.customerId,
        clientSecretKey: paymentIntentModel.clientSecret!,
        ephemeralKey: ephemeralKeyModel.secret!);
    await initPaymentSheet(
        initPaymentSheetInputModel: initPaymentIntentSheetModel);
    await displayPaymentSheet();
  }
}

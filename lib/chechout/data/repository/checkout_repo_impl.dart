import 'package:checkoutapp/chechout/core/error_handling/failure.dart';
import 'package:checkoutapp/chechout/core/utils/stripe_service.dart';
import 'package:checkoutapp/chechout/data/models/payment_intent_input.dart';
import 'package:checkoutapp/chechout/data/repository/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImpl extends CheckoutRep {
  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}

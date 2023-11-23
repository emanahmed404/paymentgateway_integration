import 'dart:developer';

import 'package:checkoutapp/chechout/data/models/payment_intent_input.dart';
import 'package:checkoutapp/chechout/data/repository/checkout_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'stripe_payment_state.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkoutRep) : super(StripePaymentInitial());
  final CheckoutRep checkoutRep;

  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel})async{
    emit(StripePaymentLoadingState());
    var data = await checkoutRep.makePayment(paymentIntentInputModel: paymentIntentInputModel);
    data.fold((failure) => emit(StripePaymentErrorState(failure.message)), (response) => emit(StripePaymentSuccessState()));
  }

  @override
  void onChange(Change<StripePaymentState> change){
    log(change.toString());
    super.onChange(change);
  }
}


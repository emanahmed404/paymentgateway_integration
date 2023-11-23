import 'package:checkoutapp/chechout/core/error_handling/failure.dart';
import 'package:checkoutapp/chechout/data/models/payment_intent_input.dart';
import 'package:dartz/dartz.dart';

abstract class CheckoutRep {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}

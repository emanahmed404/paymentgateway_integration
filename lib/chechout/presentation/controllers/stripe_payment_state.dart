part of 'stripe_payment_cubit.dart';

@immutable
abstract class StripePaymentState {}

class StripePaymentInitial extends StripePaymentState {}
class StripePaymentLoadingState extends StripePaymentState {}
class StripePaymentSuccessState extends StripePaymentState {}
class StripePaymentErrorState extends StripePaymentState {
  final String errorMessage ;

  StripePaymentErrorState(this.errorMessage);
}


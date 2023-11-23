import 'package:checkoutapp/chechout/data/models/payment_intent_input.dart';
import 'package:checkoutapp/chechout/presentation/controllers/stripe_payment_cubit.dart';
import 'package:checkoutapp/chechout/presentation/screens/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/global_widgets/custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if(state is StripePaymentSuccessState){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
            return const  ThankYouView();
          }));
        }

        if(state is StripePaymentErrorState){
          print(state.errorMessage);
          Navigator.of(context).pop();
          SnackBar snackBar =SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: (){
            PaymentIntentInputModel paymentIntentInputModel =PaymentIntentInputModel(amount: 200, currency: "USD" ,customerId: "cus_P3WHxQGANzULa8");
            BlocProvider.of<StripePaymentCubit>(context).makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          isLoading: state is StripePaymentLoadingState ? true :false,
            title: 'Continue'
        );
      },
    );
  }
}

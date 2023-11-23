import 'package:flutter/material.dart';
import '../widgets/custom_button_bloc_consumer.dart';
import '../widgets/payment_list.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16,),
          PaymentMethodBuilder(),
          SizedBox(height: 32,),
          CustomButtonBlocConsumer() ,
        ],
      ),
    );
  }
}


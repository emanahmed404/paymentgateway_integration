import 'package:checkoutapp/chechout/core/global_widgets/custom_app_bar.dart';
import 'package:checkoutapp/chechout/presentation/screens/payment_details_body.dart';
import 'package:flutter/material.dart';


class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:buildAppBar(title:"Payment Details"),
      body: const PaymentDetailsBody(),

    );
  }
}

import 'package:checkoutapp/chechout/core/utils/api_constatns.dart';
import 'package:checkoutapp/chechout/presentation/screens/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey =ApiConstants.publishableKey;
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyCartView(),
    );
  }
}

// TODO BASIC STEPS OF STRIPE PAYMENT GATEWAY
/// PAYMENT INTENT OBJECT = CREATE PAYMENT INTENT (AMOUNT,CURRENCY)
/// INIT PAYMENT SHEET (PAYMENT INTENT OBJECT.PAYMENT INTENT CLIENT SECRET )
/// PRESENT PAYMENT SHEET


// TODO SAVE USER'S CARD STEPS OF STRIPE PAYMENT GATEWAY
/// PAYMENT INTENT OBJECT = CREATE PAYMENT INTENT (AMOUNT,CURRENCY ,customerID)
/// KEY SECRET =CREATE EPHEMERAL KEY(STRIPE VERSION , CUSTOMER KEY)
/// INIT PAYMENT SHEET (PAYMENT INTENT OBJECT.(MERCHANT DISPLAY NAME ,PAYMENT INTENT CLIENT SECRET ,EPHEMERAL KEY SECRET ))
/// PRESENT PAYMENT SHEET
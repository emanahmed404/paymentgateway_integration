import 'package:checkoutapp/chechout/presentation/widgets/payment_method_item_builder.dart';
import 'package:flutter/material.dart';

class PaymentMethodBuilder extends StatefulWidget {
  const PaymentMethodBuilder({super.key});

  @override
  State<PaymentMethodBuilder> createState() => _PaymentMethodBuilderState();
}

class _PaymentMethodBuilderState extends State<PaymentMethodBuilder> {
  final List<String> payments =const ['assets/images/card.svg','assets/images/paypal.svg',
    // 'assets/images/applepay.svg'
  ];
 int activeIndex =0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: payments.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context ,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(onTap: (){
                activeIndex = index ;
                setState(() {

                });
              },
                  child: BuildPaymentMethodItem( isActive: activeIndex == index ,image: payments[index])),
            );
          }),
    );
  }
}

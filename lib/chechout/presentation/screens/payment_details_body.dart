import 'package:checkoutapp/chechout/core/global_widgets/custom_button.dart';
import 'package:checkoutapp/chechout/presentation/screens/thank_you_view.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_credit_card.dart';
import '../widgets/payment_list.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey =GlobalKey();
   AutovalidateMode autovalidateMode =AutovalidateMode.disabled ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: CustomScrollView(
        slivers:[
          const SliverToBoxAdapter(
            child: SizedBox(
            height: 10,
        ),
          ),
          const SliverToBoxAdapter(child: PaymentMethodBuilder()),
          const SliverToBoxAdapter(child: SizedBox(height: 25,)),
          SliverToBoxAdapter(child: CustomCreditCard(formKey: formKey,autovalidateMode: autovalidateMode,)),
           SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0,right: 10,left: 10),
                  child: CustomButton(title: 'pay',
                  onTap: (){
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                    }
                    else{
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const ThankYouView();
                          }));
                      autovalidateMode=AutovalidateMode.always ;
                      setState(() {
                        
                      });
                    }
                  },),
                )),)

        ]

      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/styles.dart';

class CreditCardSymbolInfo extends StatelessWidget {
  const CreditCardSymbolInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        width: 305,
        padding:const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white),
        child: Row(children: [
          SvgPicture.asset('assets/images/mastercard.svg'),
          const SizedBox(width: 23,),
          const Text.rich(
              TextSpan(
                  children: [
                    TextSpan(
                        text: "Credit Card ",
                        style: Styles.style18
                    ),
                    TextSpan(text: 'Mastercard **78',
                        style: Styles.style16),
                  ])
          )
        ],),
      ),
    );
  }
}

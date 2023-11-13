import 'package:checkoutapp/chechout/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onTap});
  final String title ;
  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff34a853),
          ),
        child:  Center(
          child:  Text(
              title,
              style:Styles.style22
          ),
        ),
      ),
    );
  }
}

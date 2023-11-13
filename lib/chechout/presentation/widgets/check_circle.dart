import 'package:flutter/material.dart';

class CheckCircle extends StatelessWidget {
  const CheckCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: -50,
      left: 0,
      right: 0,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xffd9d9d9),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xff34a853),
          child: Icon(Icons.check ,color: Colors.white,size: 55,),
        ),
      ),
    );
  }
}

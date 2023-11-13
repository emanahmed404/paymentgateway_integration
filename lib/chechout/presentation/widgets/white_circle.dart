import 'package:flutter/material.dart';

class WhiteRightCircle extends StatelessWidget {
  const WhiteRightCircle({super.key, required this.right});
  final double right  ;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * 0.20,
      right: right ,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}



class WhiteLeftCircle extends StatelessWidget {
  const WhiteLeftCircle({super.key, required this.left});
  final double left  ;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * 0.20,
      left: left ,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}


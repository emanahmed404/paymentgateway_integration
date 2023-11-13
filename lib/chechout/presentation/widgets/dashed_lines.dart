import 'package:flutter/material.dart';

class DashedLines extends StatelessWidget {
  const DashedLines({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * 0.22,
      left: 20 + 7,
      right: 20 + 7,
      child: Row(
          children: List.generate(
              30,
                  (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Container(
                      height: 2,
                      color: const Color(0xffB8B8B8),
                    ),
                  )))),
    );
  }
}

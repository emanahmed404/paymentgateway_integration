import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';

class CheckOutItemInfo extends StatelessWidget {
  const CheckOutItemInfo({super.key, required this.title, required this.info});

  final String title, info;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.style18),
        Text(info, style: Styles.styleBold18)
      ],
    );
  }
}


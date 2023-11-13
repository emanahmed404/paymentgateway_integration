import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';

class OrderInfoRow extends StatelessWidget {
  const OrderInfoRow({super.key, required this.title, required this.value});
  final String title,value ;
  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      Text(
          title,
          style: Styles.style18
      ),
      Spacer(),
      Text(
          value,
          style: Styles.style18
      ),
    ],);
  }
}

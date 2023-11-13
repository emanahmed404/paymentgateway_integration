import 'package:checkoutapp/chechout/presentation/screens/my_cart_view_body.dart';
import 'package:flutter/material.dart';

import '../../core/global_widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(title: "My Cart"),
      body: const MyCartViewBody(),
    );
  }

}

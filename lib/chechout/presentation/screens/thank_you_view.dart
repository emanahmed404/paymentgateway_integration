import 'package:checkoutapp/chechout/presentation/screens/thank_you_view_body.dart';
import 'package:flutter/material.dart';

import '../../core/global_widgets/custom_app_bar.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(),
      body:  Transform.translate(offset: const Offset(0, -16),child: const ThankYouViewBody()),
    );
  }
}

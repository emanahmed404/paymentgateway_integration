import 'package:flutter/material.dart';

import '../widgets/check_circle.dart';
import '../widgets/dashed_lines.dart';
import '../widgets/thank_you_card.dart';
import '../widgets/white_circle.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Stack(clipBehavior: Clip.none, children: [
        ThankYouCard(),
        CheckCircle(),
        WhiteRightCircle(right: -20),
        WhiteLeftCircle(left: -20),
        DashedLines(),
      ]),
    );
  }
}


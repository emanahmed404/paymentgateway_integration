import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Styles{
  static const TextStyle style25 =   TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter'
  );

  static const TextStyle style18 =  TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
      fontFamily: 'Inter'

  );
  static const TextStyle style16 =  TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    color: Colors.black38

  );

  static const TextStyle styleBold18 =  TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
      fontFamily: 'Inter'

  );

  static const TextStyle style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
      fontFamily: 'Inter'

  );

  static  TextStyle style20 = TextStyle(
    color: Colors.black.withOpacity(0.800000011920929),
    fontSize: 20,
    fontWeight: FontWeight.w400,
      fontFamily: 'Inter'

  );

  static const TextStyle style22 =TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
      fontFamily: 'Inter'

  );
}
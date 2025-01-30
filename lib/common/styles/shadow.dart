import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';

class TShadowstyle {
  static final vertcialShadowstyle = BoxShadow(
    color: Tcolors.darergrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
  static final horizontalShadowstyle = BoxShadow(
    color: Tcolors.darergrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}

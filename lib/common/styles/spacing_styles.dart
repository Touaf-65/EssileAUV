import 'package:essile/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EssileSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: EssileSizes.appBarHeight,
    left: EssileSizes.defaultSpace,
    bottom: EssileSizes.defaultSpace,
    right: EssileSizes.defaultSpace,
  );
}

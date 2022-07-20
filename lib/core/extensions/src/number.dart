import 'package:flutter/material.dart';

extension DoubleX on double {
  Widget get height => SizedBox(height: this);
  Widget get width => SizedBox(width: this);
}

extension IntX on int {
  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());
}
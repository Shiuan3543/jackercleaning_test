import 'package:flutter/material.dart';

class UI {
  UI._();

  static Widget listViewBuilder({
    required List<Widget> children,
    EdgeInsetsGeometry? padding = const EdgeInsets.symmetric(horizontal: 24),
  }) {
    return ListView.builder(
      padding: padding,
      itemCount: children.length,
      itemBuilder: (_, index) => children[index],
    );
  }
}
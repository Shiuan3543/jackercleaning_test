import 'package:flutter/material.dart';

abstract class WidgetView<T1, T2> extends StatelessWidget {
  final T2 s;

  T1 get widget => (s as State).widget as T1;

  const WidgetView(this.s, {
    super.key,
  });

  @override
  Widget build(BuildContext context);

  void safeSetState(VoidCallback fn) {
    if ((s as State).mounted) {
      // ignore: invalid_use_of_protected_member
      (s as State).setState(fn);
    }
  }

  void setState(VoidCallback fn) {
    // ignore: invalid_use_of_protected_member
    (s as State).setState(fn);
  }
}
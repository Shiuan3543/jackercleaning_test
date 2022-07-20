import 'package:flutter/material.dart';
import 'package:jackercleaning_test/presentation/screens/cart_air_conditioner_screen/cart_air_conditioner_screen.dart';
import 'package:jackercleaning_test/presentation/screens/cart_confirm_screen/cart_confirm_screen.dart';
// import 'package:jackercleaning_test/presentation/screens/main_screen/main_screen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    //MainScreen.getPath(): (_) => const MainScreen(),
    CartAirConditionerScreen.getPath(): (_) => const CartAirConditionerScreen(),
    CartConfirmScreen.getPath(): (_) => const CartConfirmScreen(),
  };
}

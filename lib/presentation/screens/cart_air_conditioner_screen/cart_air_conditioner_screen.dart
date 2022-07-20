import 'package:flutter/material.dart';
import 'package:jackercleaning_test/core/extensions/extensions.dart';
import 'package:jackercleaning_test/core/utilities/utilities.dart';
import 'package:jackercleaning_test/presentation/components/components.dart';
import 'package:jackercleaning_test/presentation/screens/cart_confirm_screen/cart_confirm_screen.dart';
import 'package:jackercleaning_test/presentation/view_model/view_models.dart';
import 'package:provider/provider.dart';

part 'cart_air_conditioner_screen_logic.dart';
part 'cart_air_conditioner_screen_view.dart';

class CartAirConditionerScreen extends StatefulWidget {
  const CartAirConditionerScreen({
    super.key,
  });

  static const _name = '/CartAirConditionerScreen';
  static String getPath() => _name;
  // static GetPage getRoute() => GetPage(name: _name, page: () => const CartAirConditionerScreen());

  @override
  State<CartAirConditionerScreen> createState() =>
      _CartAirConditionerScreenLogic();
}

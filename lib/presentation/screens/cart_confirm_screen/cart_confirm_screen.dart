import 'package:flutter/material.dart';
import 'package:jackercleaning_test/app/constants.dart';
import 'package:jackercleaning_test/core/extensions/extensions.dart';
import 'package:jackercleaning_test/core/utilities/utilities.dart';
import 'package:jackercleaning_test/data/models/models.dart';
import 'package:jackercleaning_test/presentation/components/components.dart';
import 'package:jackercleaning_test/presentation/screens/cart_air_conditioner_screen/cart_air_conditioner_screen.dart';
import 'package:jackercleaning_test/presentation/view_model/view_models.dart';
import 'package:provider/provider.dart';

part 'cart_confirm_screen_logic.dart';
part 'cart_confirm_screen_view.dart';

class CartConfirmScreen extends StatefulWidget {
  const CartConfirmScreen({
    super.key,
  });

  static const _name = '/CartConfirmScreen';
  static String getPath() => _name;
  // static GetPage getRoute() => GetPage(name: _name, page: () => const CartConfirmScreen());

  @override
  State<CartConfirmScreen> createState() => _CartConfirmScreenLogic();
}

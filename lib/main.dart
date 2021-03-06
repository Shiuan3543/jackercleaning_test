import 'package:flutter/material.dart';
import 'package:jackercleaning_test/app/routes/routes.dart';
import 'package:jackercleaning_test/presentation/screens/cart_air_conditioner_screen/cart_air_conditioner_screen.dart';
import 'package:jackercleaning_test/presentation/styles/src/themes/light_theme.dart';
import 'package:provider/provider.dart';

import 'core/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: getProviders(),
      child: MaterialApp(
        color: primaryColor,
        debugShowCheckedModeBanner: false,
        title: '潔客幫',

        /// Themes
        themeMode: ThemeMode.light,
        theme: getLightThemeData(),

        /// Routes
        routes: getRoutes(),
        initialRoute: CartAirConditionerScreen.getPath(),
      ),
    );
  }
}

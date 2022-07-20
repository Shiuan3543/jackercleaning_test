import 'package:flutter/material.dart';
import 'package:jackercleaning_test/app/routes/routes.dart';
import 'package:jackercleaning_test/core/providers.dart';
import 'package:jackercleaning_test/presentation/screens/cart_confirm_screen/cart_confirm_screen.dart';
import 'package:jackercleaning_test/presentation/styles/src/themes/light_theme.dart';

import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
        initialRoute: CartConfirmScreen.getPath(),
      ),
    );
  }
}

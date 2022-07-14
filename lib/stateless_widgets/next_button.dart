import 'package:flutter/material.dart';
import 'package:jackercleaning_test/models/models.dart';
import 'package:jackercleaning_test/pages/checkout_page.dart';

class NextButton extends StatelessWidget {
  NextButton({Key? key, required this.product, this.onPressed})
      : super(key: key);

  final VoidCallback? onPressed;
  // {
  // for (var i = 0; i < products.length; i++) {
  //   sum = sum + products[i].quantity * products[i].price;
  // }
  // }
  final Product product;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      elevation: 5,
      onPrimary: Colors.white,
      primary: Color.fromRGBO(54, 187, 217, 0.8),
      minimumSize: const Size.fromHeight(50),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    return Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: raisedButtonStyle,
          onPressed: onPressed,
          child: Text('下一步', style: TextStyle(fontSize: 25)),
        ));
  }
}

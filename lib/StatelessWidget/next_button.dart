import 'package:flutter/material.dart';
import 'package:jackercleaning_test/model/models.dart';
import 'package:jackercleaning_test/page/checkoutpage.dart';

class NextButton extends StatelessWidget {
  var products;
  NextButton(Product products, {Key? key}) : super(key: key) {
    // for (var i = 0; i < products.length; i++) {
    //   sum = sum + products[i].quantity * products[i].price;
    // }
    products = products;
  }
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
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => CheckoutPage(products))));
          },
          child: Text('下一步', style: TextStyle(fontSize: 25)),
        ));
  }
}

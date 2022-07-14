import 'package:flutter/material.dart';
import 'package:jackercleaning_test/StatelessWidget/checkout_button.dart';
import 'package:jackercleaning_test/StatelessWidget/next_button.dart';
import 'package:jackercleaning_test/model/models.dart';

class CheckoutPage extends StatelessWidget {
  var products;
  CheckoutPage(products, {Key? key}) : super(key: key) {
    products = products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '確認價格',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '訂單內容',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.left,
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: 570,
            child: ListTile(
              title: Text(
                '服務項目',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              subtitle: Text(
                '    A strong animal',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              //trailing: Text(products.calculate()),
            ),
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('assets/icon.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          CheckoutButton(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jackercleaning_test/stateless_widgets/checkout_button.dart';
import 'package:jackercleaning_test/stateless_widgets/next_button.dart';
import 'package:jackercleaning_test/models/models.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage({Key? key, required this.products}) : super(key: key);
  final Product products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.maybePop(context, 1);
        }),
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
                products.name + " x " + products.quantity.toString(),
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              trailing: Text(products.calculate().toString()),
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

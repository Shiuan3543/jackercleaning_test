import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({Key? key}) : super(key: key);

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
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text('結帳成功',
                  style: TextStyle(fontSize: 40), textAlign: TextAlign.center),
              content: Text('即將返回首頁',
                  style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    child: Text('反回首頁',
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.center),
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                  ),
                ),
              ],
            ),
          ),
          child: Text('結帳', style: TextStyle(fontSize: 25)),
        ));
  }
}

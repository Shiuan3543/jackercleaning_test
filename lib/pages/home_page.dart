import 'package:flutter/material.dart';
import 'package:jackercleaning_test/pages/checkout_page.dart';
import 'package:jackercleaning_test/stateless_widgets/next_button.dart';
import 'package:jackercleaning_test/models/models.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
  }

  List<Product> products = [
    Product('分離式冷氣機 (室內機)', 2500, 0),
    Product('分離式冷氣機 (室內機+室外機)', 3000, 0),
    Product('窗型冷氣機 (三期以下)', 3500, 0),
    Product('窗型冷氣機 (三期以上)', 4000, 0),
    Product('分離式冷氣機 (室內機)', 3200, 0),
    Product('分離式冷氣機 (室內機+室外機)', 3500, 0),
    Product('', 0, 0),
  ];
  var id = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '冷氣機清潔',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '服務項目',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.left,
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: 570,
            child: ListView.builder(
                itemCount: products.length - 1,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    tileColor: Color.fromARGB(200, 217, 217, 217),
                    title: Text(
                      products[index].name,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(
                      "\$" + products[index].price.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(54, 187, 217, 0.8),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.remove_circle,
                                color: Color.fromRGBO(54, 187, 217, 0.8)),
                            iconSize: 25.0,
                            onPressed: () {
                              setState(() {
                                if (products[index].quantity > 0) {
                                  products[index].quantity--;
                                  if (products[index].quantity == 0) {
                                    id = 6;
                                  }
                                } else {
                                  Null;
                                }
                              });
                            },
                          ),
                        ),
                        Text(
                          products[index].quantity.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.add_circle,
                                color: Color.fromRGBO(54, 187, 217, 0.8)),
                            iconSize: 25.0,
                            onPressed: () {
                              setState(() {
                                if (id == 6) {
                                  id = index;
                                  products[index].quantity++;
                                } else if (id == index &&
                                    products[index].quantity < 10) {
                                  products[index].quantity++;
                                } else {
                                  Null;
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          NextButton(
              product: products[id],
              onPressed: products[id].quantity > 0
                  ? () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  CheckoutPage(products: products[id]))));

                      if (result != 1) {
                        products.forEach((element) {
                          element.quantity = 0;
                        });

                        setState(() {});
                      }
                    }
                  : null),
        ],
      ),
    );
  }
}

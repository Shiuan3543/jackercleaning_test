class Product {
  final String name;
  final int price;
  var quantity = 0;
  Product(this.name, this.price, this.quantity);
  int calculate() {
    return price * quantity;
  }
}

// class SeparateIndoor extends Product {
//   SeparateIndoor(super.name, super.price, super.quantity);
// }

// class SeparateIndoorOutdoor extends Product {
//   SeparateIndoorOutdoor(super.name, super.price, super.quantity);
// }

// class WindowType3More extends Product {
//   WindowType3More(super.name, super.price, super.quantity);
// }

// class WindowType3below extends Product {
//   WindowType3below(super.name, super.price, super.quantity);
// }

// class ConcealedIndoor extends Product {
//   ConcealedIndoor(super.name, super.price, super.quantity);
// }

// class ConcealedIndoorOutdoor extends Product {
//   ConcealedIndoorOutdoor(super.name, super.price, super.quantity);
// }

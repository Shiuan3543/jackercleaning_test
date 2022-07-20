import 'package:flutter/material.dart';
import 'package:jackercleaning_test/core/enums/enums.dart';
import 'package:jackercleaning_test/core/extensions/extensions.dart';
import 'package:jackercleaning_test/data/models/src/cart_item.dart';

class CartViewModel extends ChangeNotifier {
  CartViewModel() {
    cartItems = List.unmodifiable([
      CartItem(
        id: 1,
        serviceType: ServiceType.airConditioner,
        name: '分離式冷氣機（室內機）',
        price: 2500,
        count: 0,
      ),
      CartItem(
        id: 2,
        serviceType: ServiceType.airConditioner,
        name: '分離式冷氣機（室內機＋室外機）',
        price: 3000,
        count: 0,
      ),
      CartItem(
        id: 3,
        serviceType: ServiceType.airConditioner,
        name: '窗型冷氣機（三噸以下）',
        price: 3500,
        count: 0,
      ),
      CartItem(
        id: 4,
        serviceType: ServiceType.airConditioner,
        name: '窗型冷氣機（三噸以上）',
        price: 4000,
        count: 0,
      ),
      CartItem(
        id: 5,
        serviceType: ServiceType.airConditioner,
        name: '吊隱式冷氣機（室內機）',
        price: 3200,
        count: 0,
      ),
      CartItem(
        serviceType: ServiceType.airConditioner,
        id: 6,
        name: '吊隱式冷氣機（室內機＋室外機）',
        price: 3500,
        count: 0,
      ),
    ]);
  }

  late List<CartItem> cartItems;

  void addDeltaToCart(int id, int countDelta) {
    final item = cartItems.firstWhereOrNull((e) => e.id == id);
    if (item == null) {
      return;
    }

    final result = item.count + countDelta;
    if (result < 0 || result > 10) {
      return;
    }

    item.count = result;
    notifyListeners();
  }

  void clearCart() {
    for (var item in cartItems) {
      item.count = 0;
    }
    notifyListeners();
  }
}

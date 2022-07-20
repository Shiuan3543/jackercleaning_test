import 'package:jackercleaning_test/core/enums/enums.dart';

class CartItem {
  CartItem({
    required this.id,
    required this.serviceType,
    required this.name,
    required this.price,
    required this.count,
  });

  final int id;
  final ServiceType serviceType;
  final String name;
  final num price;
  int count;
}

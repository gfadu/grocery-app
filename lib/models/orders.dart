class Orders {
  final String name;
  final int price;

  Orders({
    required this.name,
    required this.price,
  });
}

List<Orders> orders = [];

double get totalAmount {
  var total = 0.0;
  orders.forEach((price) {
    total += price.price;
  });
  return total;
}

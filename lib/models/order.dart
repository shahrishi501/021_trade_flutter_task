class ActiveOrder{
   final String symbol;
  final String time;
  final String product;
  final double price;
  final int quantityExecuted;
  final int quantityTotal;
  final String clientId;
  final bool isBuy;

  ActiveOrder({
    required this.symbol,
    required this.time,
    required this.product,
    required this.price,
    required this.quantityExecuted,
    required this.quantityTotal,
    required this.clientId,
    required this.isBuy,
  });
}
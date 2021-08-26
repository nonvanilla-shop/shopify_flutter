import 'package:shopify/query.dart';
import 'package:shopify/query_objects/money/money_fields.dart';

class ShopifyMoney extends Query with MoneyFields {
  @override
  String get query => '{\n'
      '$fields'
      '}';
}

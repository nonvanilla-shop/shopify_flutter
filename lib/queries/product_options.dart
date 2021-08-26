import 'package:shopify/query.dart';
import 'package:shopify/query_objects/product_options/product_options_fields.dart';
import 'package:shopify/query_objects/product_options/product_options_header.dart';

class ShopifyProductOptions extends Query
    with ProductOptionsHeader, ProductOptionsFields {
  @override
  String get query => '$header {\n'
      '$fields'
      '}';
}

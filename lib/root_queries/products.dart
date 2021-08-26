import 'package:shopify/query.dart';
import 'package:shopify/query_objects/product/product_fields.dart';
import 'package:shopify/query_objects/product/products_header.dart';

class ShopifyProducts<T> extends RootQuery<T>
    with ProductsHeader, ProductFields {
  @override
  String get query => 'products $header {\n'
      '   edges {\n'
      '     node {\n'
      '       $fields'
      '     }\n'
      '   }\n'
      '}';
}

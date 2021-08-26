import 'package:shopify/query.dart';
import 'package:shopify/query_objects/product_variant/product_variant_fields.dart';

class ShopifyProductVariant extends Query with ProductVariantFields {
  @override
  String get query => '{\n'
      '$fields'
      '}';
}

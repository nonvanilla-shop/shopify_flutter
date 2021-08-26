import 'package:shopify/query.dart';
import 'package:shopify/query_objects/metafield/metafield_fields.dart';

class ShopifyMetafield extends Query with MetafieldFields {
  @override
  String get query => '{\n'
      '$fields'
      '}';
}

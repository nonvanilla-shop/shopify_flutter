import 'package:shopify/query_objects/blog_query/blog_fields.dart';
import 'package:shopify/query.dart';

class ShopifyBlog extends Query with BlogFields {
  @override
  String get query => '{\n'
      '$fields'
      '}';
}

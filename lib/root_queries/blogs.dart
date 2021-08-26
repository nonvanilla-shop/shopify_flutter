import 'package:shopify/query_objects/blog_query/blog_fields.dart';
import 'package:shopify/query_objects/blog_query/blogs_header.dart';
import 'package:shopify/query.dart';

class ShopifyBlogs<T> extends RootQuery<T> with BlogFields, BlogsHeader {
  @override
  String get query => 'blogs $header {\n'
      '$fields'
      '}';
}

import 'package:shopify/query_objects/article_author/article_author_fields.dart';
import 'package:shopify/query.dart';

class ShopifyArticleAuthor extends Query with ArticleAuthorFields {
  @override
  String get query => '{\n'
      '$fields'
      '}';
}

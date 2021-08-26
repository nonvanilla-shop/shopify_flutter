import 'package:shopify/query.dart';

class ShopifyPages extends RootQuery //with PageFields
{
  @override
  String get query => 'pages {\n'
      // '$fields'
      '}';
}

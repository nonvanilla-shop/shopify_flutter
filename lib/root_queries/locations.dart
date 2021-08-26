import 'package:shopify/query_objects/location/location_fields.dart';
import 'package:shopify/query.dart';

class ShopifyLocations extends RootQuery with LocationFields {
  @override
  String get query => 'locations {\n'
      '$fields'
      '}';
}

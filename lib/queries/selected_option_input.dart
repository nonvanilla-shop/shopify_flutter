import 'package:shopify/query.dart';
import 'package:shopify/query_objects/selected_option_input/selected_option_input_fields.dart';

class ShopifySelectedOptionInput extends Query with SelectedOptionInputFields {
  @override
  String get query => '{\n'
      '$fields'
      '}';
}

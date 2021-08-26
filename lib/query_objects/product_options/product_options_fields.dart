import 'package:shopify/queries/compare_at_price_range.dart';
import 'package:shopify/query_objects/product_price_range/product_price_range_fields.dart';

class ProductOptionsFields {
  late final String fields;

  void withFields({
    /// Globally unique identifier.
    bool id = false,

    /// The product option’s name.
    bool name = false,

    /// The corresponding value to the product option name.
    bool values = false,
  }) =>
      fields = '${id ? 'id\n' : ''}'
          '${name ? 'name\n' : ''}'
          '${values ? 'values\n' : ''}';
}

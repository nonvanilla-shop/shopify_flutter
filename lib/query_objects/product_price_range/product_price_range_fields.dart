import 'package:shopify/queries/money.dart';

class ProductPriceRangeFields {
  late final String fields;

  void withFields({
    /// The highest variant's price.
    ShopifyMoney? maxVariantPrice,

    /// The lowest variant's price.
    ShopifyMoney? minVariantPrice,
  }) =>
      fields =
          '${maxVariantPrice != null ? 'maxVariantPrice ${maxVariantPrice.query}\n' : ''}'
              '${minVariantPrice != null ? 'minVariantPrice ${minVariantPrice.query}\n' : ''}';
}

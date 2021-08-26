import 'package:shopify/queries/compare_at_price_range.dart';
import 'package:shopify/queries/metafield.dart';
import 'package:shopify/queries/money.dart';
import 'package:shopify/queries/product.dart';

class ProductVariantFields {
  late final String fields;

  void withFields({
    /// Indicates if the product variant is available for sale.
    bool availableForSale = false,

    /// The compare at price of the variant. This can be used to mark a variant as on sale, when compareAtPriceV2 is higher than priceV2.
    ShopifyProductPriceRange? compareAtPrice,

    /// Whether a product is out of stock but still available for purchase (used for backorders).
    bool currentlyNotInStock = false,

    /// Globally unique identifier.
    bool id = false,

    /// Image associated with the product variant. This field falls back to the product image if no image is available.
    bool image = false,

    /// Returns a metafield found by namespace and key.
    ShopifyMetafield? metafield,

    /// The product variant’s price.
    ShopifyMoney? price,

    /// The product object that the product variant belongs to.
    ShopifyProduct? product,

    /// The total sellable quantity of the variant for online sales channels.
    bool quantityAvailable = false,

    /// Whether a customer needs to provide a shipping address when placing an order for the product variant.
    bool requiresShipping = false,

    /// List of product options applied to the variant.
    bool selectedOptions = false,

    /// The SKU (stock keeping unit) associated with the variant.
    bool sku = false,

    /// The product variant’s title.
    bool title = false,

    /// The unit price value for the variant based on the variant's measurement.
    ShopifyMoney? unitPrice,

    /// The unit price measurement for the variant.
    bool unitPriceMeasurement = false,

    /// The weight of the product variant in the unit system specified with weight_unit.
    bool weight = false,

    /// Unit of measurement for weight.
    bool weightUnit = false,
  }) =>
      fields = '${availableForSale ? 'availableForSale\n' : ''}'
          '${compareAtPrice != null ? 'availableForSale ${compareAtPrice.query}\n' : ''}'
          '${currentlyNotInStock ? 'currentlyNotInStock\n' : ''}'
          '${id ? 'id\n' : ''}'
          '${image ? 'image\n' : ''}'
          '${metafield != null ? 'metafield ${metafield.query}\n' : ''}'
          '${price != null ? 'price ${price.query}\n' : ''}'
          '${product != null ? 'product ${product.query}\n' : ''}'
          '${quantityAvailable ? 'quantityAvailable\n' : ''}'
          '${requiresShipping ? 'requiresShipping\n' : ''}'
          '${selectedOptions ? 'selectedOptions\n' : ''}'
          '${sku ? 'sku\n' : ''}'
          '${title ? 'title\n' : ''}'
          '${unitPrice != null ? 'unitPrice ${unitPrice.query}\n' : ''}'
          '${unitPriceMeasurement ? 'unitPriceMeasurement\n' : ''}'
          '${weight ? 'weight\n' : ''}'
          '${weightUnit ? 'weightUnit\n' : ''}';
}

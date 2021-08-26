import 'package:shopify/queries/compare_at_price_range.dart';
import 'package:shopify/queries/metafield.dart';
import 'package:shopify/queries/product_options.dart';
import 'package:shopify/queries/product_variant.dart';
import 'package:shopify/queries/seo.dart';

class ProductFields {
  late final String fields;

  void withFields({
    /// Indicates if at least one product variant is available for sale.
    bool availableForSale = false,

    /// The compare at price of the product across all variants.
    ShopifyProductPriceRange? compareAtPriceRange,

    /// The date and time when the product was created.
    bool createdAt = false,

    /// Stripped description of the product, single line with HTML tags removed.
    bool description = false,

    /// The description of the product, complete with HTML formatting.
    bool descriptionHtml = false,

    /// A human-friendly unique string for the Product automatically generated from its title. They are used by the Liquid templating language to refer to objects.
    bool handle = false,

    /// Globally unique identifier.
    bool id = false,

    ///  Returns a metafield found by namespace and key.
    ShopifyMetafield? metafield,

    /// The online store URL for the product. A value of null indicates that the product is not published to the Online Store sales channel.
    bool onlineStoreUrl = false,

    /// List of product options.
    ShopifyProductOptions? options,

    /// The price range.
    ShopifyProductPriceRange? priceRange,

    /// A categorization that a product can be tagged with, commonly used for filtering and searching.
    bool productType = false,

    /// The date and time when the product was published to the channel.
    bool publishedAt = false,

    /// Whether the product can only be purchased with a selling plan.
    bool requiresSellingPlan = false,

    /// The product's SEO information.
    ShopifySeo? seo,

    /// A comma separated list of tags that have been added to the product. Additional access scope required for private apps: unauthenticated_read_product_tags.
    bool tags = false,

    /// The product’s title.
    bool title = false,

    /// The total quantity of inventory in stock for this Product.
    /// Required access: unauthenticated_read_product_inventory access scope.
    bool totalInventory = false,

    /// The date and time when the product was last modified. A product's
    /// updatedAt value can change for different reasons. For example,
    /// if an order is placed for a product that has inventory tracking
    /// set up, then the inventory adjustment is counted as an update.
    bool updatedAt = false,

    /// Find a product’s variant based on its selected options. This is
    /// useful for converting a user’s selection of product options into
    /// a single matching variant. If there is not a variant for the
    /// selected options, null will be returned.
    ShopifyProductVariant? variantBySelectedOptions,

    /// The input fields used for a selected option.
    bool selectedOptions = false,

    /// The product’s vendor name.
    bool vendor = false,
  }) =>
      fields = '${availableForSale ? 'availableForSale\n' : ''}'
          '${compareAtPriceRange != null ? 'compareAtPriceRange ${compareAtPriceRange.query}\n' : ''}'
          '${createdAt ? 'createdAt\n' : ''}'
          '${description ? 'description\n' : ''}'
          '${descriptionHtml ? 'descriptionHtml\n' : ''}'
          '${handle ? 'handle\n' : ''}'
          '${id ? 'id\n' : ''}'
          '${metafield != null ? '${metafield.query}\n' : ''}'
          '${onlineStoreUrl ? 'onlineStoreUrl\n' : ''}'
          '${options != null ? 'options ${options.query}\n' : ''}'
          '${priceRange != null ? 'priceRange ${priceRange.query}\n' : ''}'
          '${productType ? 'productType\n' : ''}'
          '${publishedAt ? 'publishedAt\n' : ''}'
          '${requiresSellingPlan ? 'requiresSellingPlan\n' : ''}'
          '${seo != null ? 'seo ${seo.query}\n' : ''}'
          '${tags ? 'tags\n' : ''}'
          '${title ? 'title\n' : ''}'
          '${totalInventory ? 'totalInventory\n' : ''}'
          '${updatedAt ? 'updatedAt\n' : ''}'
          '${variantBySelectedOptions != null ? 'variantBySelectedOptions ${variantBySelectedOptions.query}\n' : ''}'
          '${selectedOptions ? 'selectedOptions\n' : ''}'
          '${vendor ? 'vendor\n' : ''}';
}

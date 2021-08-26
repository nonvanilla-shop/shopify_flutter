import 'package:shopify/root_queries/articles.dart';
import 'package:shopify/root_queries/blogs.dart';
import 'package:shopify/root_queries/collections.dart';
import 'package:shopify/root_queries/locations.dart';
import 'package:shopify/root_queries/pages.dart';
import 'package:shopify/root_queries/product_tags.dart';
import 'package:shopify/root_queries/product_types.dart';
import 'package:shopify/root_queries/products.dart';

abstract class Query {
  String get query;
}

abstract class RootQuery<T> extends Query {
  late final T Function(Map<String, dynamic> json) map;

  void as(T as(Map<String, dynamic> json)) => map = as;
}

// TODO find way to add fragments -> maybe function returning query object

abstract class ShopifyQuery {
  /// List of the shop's articles.
  static ShopifyArticles articles() => ShopifyArticles();

  /// List of the shop's blogs.
  static ShopifyBlogs blogs() => ShopifyBlogs();

  /// List of the shop’s collections.
  static ShopifyCollections collections() => ShopifyCollections();

  /// List of the shop's locations that support in-store pickup.
  ///
  /// When sorting by distance, you must specify a location via the near argument.
  /// Additional access scope required: unauthenticated_read_product_pickup_locations
  static ShopifyLocations locations() => ShopifyLocations();

  /// List of the shop's pages.
  static ShopifyPages pages() => ShopifyPages();

  /// Tags added to products.
  /// Additional access scope required: unauthenticated_read_product_tags.
  static ShopifyProductTags productTags() => ShopifyProductTags();

  /// List of product types for the shop's products that are published to your app.
  /// Additional access scope required: unauthenticated_read_product_listings
  static ShopifyProductTypes productTypes() => ShopifyProductTypes();

  /// List of the shop’s products.
  static ShopifyProducts products() => ShopifyProducts();
}

// TODO remove and simply export type
// abstract class ShopifyQuery {
//   static ShopifyProductPriceRange productPriceRange() =>
//       ShopifyProductPriceRange();
//   static ShopifyMoney money() => ShopifyMoney();
//   static ShopifyProductOptions productOptions() => ShopifyProductOptions();
//   static ShopifySeo seo() => ShopifySeo();
//   static ShopifyProductVariant productVariant() => ShopifyProductVariant();
// }

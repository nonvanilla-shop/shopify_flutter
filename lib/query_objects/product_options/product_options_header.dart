class ProductOptionsHeader {
  late final String header;

  void by({
    /// Returns up to the first n elements from the list.
    int? first,
  }) {
    final headerList = <String>[];

    if (first != null) headerList.add('first: $first');

    header = '(${headerList.join(', ')})';
  }
}

enum ProductFilter {
  available_for_sale,
  created_at,
  product_type,
  tag,
  title,
  updated_at,
  variants_price,
  vendor,
}

enum ProductSortKeys {
  /// Sort by the best_selling value.
  BEST_SELLING,

  /// Sort by the created_at value.
  CREATED_AT,

  /// Sort by the id value.
  ID,

  /// Sort by the price value.
  PRICE,

  /// Sort by the product_type value.
  PRODUCT_TYPE,

  /// During a search (i.e. when the query parameter has been specified on the
  /// connection) this sorts the results by relevance to the search term(s).
  /// When no search query is specified, this sort key is not deterministic and
  /// should not be used.
  RELEVANCE,

  /// Sort by the title value.
  TITLE,

  /// Sort by the updated_at value.
  UPDATED_AT,

  /// Sort by the vendor value.
  VENDOR,
}

extension on ProductSortKeys {
  String get value {
    switch (this) {
      case ProductSortKeys.BEST_SELLING:
        return 'BEST_SELLING';
      case ProductSortKeys.CREATED_AT:
        return 'CREATED_AT';
      case ProductSortKeys.ID:
        return 'ID';
      case ProductSortKeys.PRICE:
        return 'PRICE';
      case ProductSortKeys.PRODUCT_TYPE:
        return 'PRODUCT_TYPE';
      case ProductSortKeys.RELEVANCE:
        return 'RELEVANCE';
      case ProductSortKeys.TITLE:
        return 'TITLE';
      case ProductSortKeys.UPDATED_AT:
        return 'UPDATED_AT';
      case ProductSortKeys.VENDOR:
        return 'VENDOR';
    }
  }
}

class CollectionsHeader {
  late final String header;

  void by({
    String? after,
    String? before,
    int? first,
    int? last,
    String? query,
    bool reverse = false,
    CollectionSortKeys sortKey = CollectionSortKeys.ID,
  }) =>
      header = '('
          '${[
        '${after != null ? 'after: $after' : ''}',
        '${before != null ? 'before: $before' : ''}',
        '${first != null ? 'first: $first' : ''}',
        '${last != null ? 'last: $last' : ''}',
        '${query != null ? 'query: $query' : ''}',
        '${reverse ? 'reverse' : ''}',
        'sortKey: ${sortKey.value}',
      ].join(', ')}'
          ')';
}

enum CollectionSortKeys {
  /// Sort by the id value.
  ID,

  /// During a search (i.e. when the query parameter has been specified on the connection) this sorts the results by relevance to the search term(s). When no search query is specified, this sort key is not deterministic and should not be used.
  RELEVANCE,

  /// Sort by the title value.
  TITLE,

  /// Sort by the updated_at value.
  UPDATED_AT,
}

extension on CollectionSortKeys {
  String get value {
    switch (this) {
      case CollectionSortKeys.ID:
        return 'id';
      case CollectionSortKeys.RELEVANCE:
        return 'relevance';
      case CollectionSortKeys.TITLE:
        return 'title';
      case CollectionSortKeys.UPDATED_AT:
        return 'updated_at';
    }
  }
}

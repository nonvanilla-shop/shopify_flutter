class BlogsHeader {
  late final String header;

  void by({
    String? after,
    String? before,
    int? first,
    int? last,
    String? query,
    bool reverse = false,
    BlogSortKeys sortKey = BlogSortKeys.ID,
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

enum BlogSortKeys {
  /// Sort by the handle value.
  HANDLE,

  /// Sort by the id value.
  ID,

  /// During a search (i.e. when the query parameter has been specified on the
  /// connection) this sorts the results by relevance to the search term(s).
  /// When no search query is specified, this sort key is not deterministic and should not be used.
  RELEVANCE,

  /// Sort by the title value.
  TITLE,
}

extension on BlogSortKeys {
  String get value {
    switch (this) {
      case BlogSortKeys.HANDLE:
        return 'handle';
      case BlogSortKeys.ID:
        return 'id';
      case BlogSortKeys.RELEVANCE:
        return 'relevance';
      case BlogSortKeys.TITLE:
        return 'title';
    }
  }
}

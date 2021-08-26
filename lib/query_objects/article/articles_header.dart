class ArticlesHeader {
  late final String header;

  void by({
    String? after,
    String? before,
    int? first,
    int? last,
    String? query,
    bool reverse = false,
    ArticleSortKeys sortKey = ArticleSortKeys.ID,
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

enum ArticleSortKeys {
  /// Sort by the author value.
  AUTHOR,

  /// Sort by the blog_title value.
  BLOG_TITLE,

  /// Sort by the id value.
  ID,

  /// Sort by the published_at value.
  PUBLISHED_AT,

  /// During a search (i.e. when the query parameter has been specified on the
  /// connection) this sorts the results by relevance to the search term(s).
  /// When no search query is specified, this sort key is not deterministic
  /// and should not be used.
  RELEVANCE,

  /// Sort by the title value.
  TITLE,

  /// Sort by the updated_at value.
  UPDATED_AT,
}

extension on ArticleSortKeys {
  String get value {
    switch (this) {
      case ArticleSortKeys.AUTHOR:
        return 'author';
      case ArticleSortKeys.BLOG_TITLE:
        return 'blog_title';
      case ArticleSortKeys.ID:
        return 'id';
      case ArticleSortKeys.PUBLISHED_AT:
        return 'published_at';
      case ArticleSortKeys.RELEVANCE:
        return 'relevance';
      case ArticleSortKeys.TITLE:
        return 'title';
      case ArticleSortKeys.UPDATED_AT:
        return 'updated_at';
    }
  }
}

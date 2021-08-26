class BlogFields {
  late final String fields;
  void withFields({
    /// Find an article by its handle.
    String? articleByHandle,
    // Argument	Description
    // handle (  String! ) required
    // The handle of the article.

    /// The authors who have contributed to the blog.
    bool authors = false,

    /// A human-friendly unique string for the Blog automatically generated from its title.
    bool handle = false,

    /// Globally unique identifier.
    bool id = false,

    /// Returns a metafield found by namespace and key.
    ///
    /// Argument	Description
    /// key (  String! ) required
    /// Identifier for the metafield (maximum of 30 characters).
    /// namespace (  String! ) required
    /// Container for a set of metafields (maximum of 20 characters).
    // Metafield? metafield,

    /// The blog's SEO information.
    // Seo seo,

    /// The blogs’s title.
    bool title = false,

    /// The url pointing to the blog accessible from the web.
    bool url = false,
  }) =>
      fields =
          '${articleByHandle != null ? 'articleByHandle: $articleByHandle\n' : ''}'
              '${authors ? 'authors\n' : ''}'
              '${handle ? 'handle\n' : ''}'
              '${id ? 'id\n' : ''}'
              // '${metafield != null ? '${metafield.query}\n' : ''}'
              // '${seo != null ? '${seo.query}\n' : ''}'
              '${title ? 'title\n' : ''}'
              '${url ? 'url\n' : ''}';
}

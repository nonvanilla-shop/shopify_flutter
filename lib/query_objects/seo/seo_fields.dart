class SeoFields {
  late final String fields;

  void withFields({
    /// The meta description.
    bool description = false,

    /// The SEO title.
    bool title = false,
  }) =>
      fields =
          '${description ? 'description\n' : ''}' '${title ? 'title\n' : ''}';
}

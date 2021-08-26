class ArticleAuthorFields {
  late final String fields;

  void withFields({
    /// The author's bio.
    bool bio = false,

    /// The author’s email.
    bool email = false,

    /// The author's first name.
    bool firstName = false,

    /// The author's last name.
    bool lastName = false,

    /// The author's full name.
    bool name = false,
  }) =>
      fields = '${bio ? 'bio\n' : ''}'
          '${email ? 'email\n' : ''}'
          '${firstName ? 'firstName\n' : ''}'
          '${lastName ? 'lastName\n' : ''}'
          '${name ? 'name\n' : ''}';
}

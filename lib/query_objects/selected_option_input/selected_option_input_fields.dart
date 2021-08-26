class SelectedOptionInputFields {
  late final String fields;

  void withFields({
    /// The product option’s name.
    bool name = false,

    /// The product option’s value.
    bool value = false,
  }) =>
      fields = '${name ? 'name\n' : ''}' '${value ? 'value\n' : ''}';
}

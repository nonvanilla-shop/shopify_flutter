class MetafieldFields {
  late final String fields;

  void withFields({
    /// The date and time when the storefront metafield was created.
    bool createdAt = false,

    /// The description of a metafield.
    bool description = false,

    /// Globally unique identifier.
    bool id = false,

    /// The key name for a metafield.
    bool key = false,

    /// The namespace for a metafield.
    bool namespace = false,

    /// The parent object that the metafield belongs to.
    bool parentResource = false,

    /// The type name of the metafield. See the list of supported types.
    bool type = false,

    /// The date and time when the storefront metafield was updated.
    bool updatedAt = false,

    /// The value of a metafield.
    bool value = false,
  }) =>
      fields = '${createdAt ? 'createdAt\n' : ''}'
          '${description ? 'description\n' : ''}'
          '${id ? 'id\n' : ''}'
          '${key ? 'key\n' : ''}'
          '${namespace ? 'namespace\n' : ''}'
          '${parentResource ? 'parentResource\n' : ''}'
          '${type ? 'type\n' : ''}'
          '${updatedAt ? 'updatedAt\n' : ''}'
          '${value ? 'value\n' : ''}';
}

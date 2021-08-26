class CollectionFields {
  late final String fields;
  void withFields({
    /// Stripped description of the collection, single line with HTML tags removed.
    bool description = false,
    // Argument	Description
    // truncateAt (  Int )
    // Truncates string after the given length.

    /// The description of the collection, complete with HTML formatting.
    bool descriptionHtml = false,

    /// A human-friendly unique string for the collection automatically generated from its title. Limit of 255 characters.
    bool handle = false,

    /// Globally unique identifier.
    bool id = false,

    /// Image associated with the collection.
    // ShopifyImage? image,
    // Argument	Description
    // crop ( CropRegion )
    // Crops the image according to the specified region. This argument is deprecated: Use crop on Image.transformedSrc instead.
    // maxHeight ( Int )
    // Image height in pixels between 1 and 2048. This argument is deprecated: Use maxHeight on Image.transformedSrc instead.
    // maxWidth (  Int )
    // Image width in pixels between 1 and 2048. This argument is deprecated: Use maxWidth on Image.transformedSrc instead.
    // scale (  Int )
    // Image size multiplier for high-resolution retina displays. Must be between 1 and 3. This argument is deprecated: Use scale on Image.transformedSrc instead.
    // Default value: 1
    /// Returns a metafield found by namespace and key.
    // ShopifyMetafield? metafield,

    /// The collection’s name. Limit of 255 characters.
    bool title = false,

    /// The date and time when the collection was last modified.
    bool updatedAt = false,
  }) =>
      fields = '${description ? 'description' : ''}'
          '${descriptionHtml ? 'descriptionHtml' : ''}'
          '${handle ? 'handle' : ''}'
          '${id ? 'id' : ''}'
          // '${image ? 'image: ${image.query}' : ''}'
          // '${metafield ? 'metafield: ${metafield.query}' : ''}'
          '${title ? 'title' : ''}'
          '${updatedAt ? 'updatedAt' : ''}';
}

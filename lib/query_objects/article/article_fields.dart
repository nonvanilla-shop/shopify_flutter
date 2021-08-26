import 'package:shopify/queries/article_author.dart';
import 'package:shopify/queries/blog.dart';

class ArticleFields {
  late final String fields;

  void withFields({
    /// The article's author.
    ShopifyArticleAuthor Function(String name)? author,

    /// The blog that the article belongs to.
    ShopifyBlog? blog,

    /// Stripped content of the article, single line with HTML tags removed.
    // ShopifyContentQuery? content,

    /// The content of the article, complete with HTML formatting.
    bool contentHtml = false,

    /// Stripped content of the article, single line with HTML tags removed.
    // ShopifyExcerptQuery? excerpt,

    /// A human-friendly unique string for the Article automatically generated from its title.
    bool handle = false,

    /// Globally unique identifier.
    bool id = false,

    /// The image associated with the article.
    // ShopifyImageQuery? image,

    /// Returns a metafield found by namespace and key.
    // ShopifyMetafieldQuery? metafield,

    /// The date and time when the article was published.
    bool publishedAt = false,

    /// The article’s SEO information.
    bool seo = false,

    /// A categorization that a article can be tagged with.
    bool tags = false,

    /// The article’s name.
    bool title = false,

    /// The url pointing to the article accessible from the web.
    bool url = false,
  }) =>
      fields = (
          // '${author != null ? '${author('author').query}\n' : ''}'
          // '${blog != null ? '${blog.query}\n' : ''}'
          // '${content != null ? '${content.query}\n' : ''}'
          // '${contentHtml ? 'contentHtml\n' : ''}'
          // '${excerpt != null ? '${excerpt.query}\n' : ''}'
          '${handle ? 'handle\n' : ''}'
              '${id ? 'id\n' : ''}'
              // '${image != null ? '${image.query}\n' : ''}'
              // '${metafield != null ? '${metafield.query}\n' : ''}'
              '${publishedAt ? 'publishedAt\n' : ''}'
              '${seo ? 'seo\n' : ''}'
              '${tags ? 'tags\n' : ''}'
              '${title ? 'title\n' : ''}'
              '${url ? 'url\n' : ''}');
}

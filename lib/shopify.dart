library shopify;

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shopify/query.dart';

export 'package:shopify/shopify.dart';
export 'package:shopify/query.dart';

// Export all sub query types independently to keep interface clean!
export 'package:shopify/queries/compare_at_price_range.dart';
export 'package:shopify/queries/money.dart';
export 'package:shopify/queries/product_options.dart';
export 'package:shopify/queries/product_variant.dart';
export 'package:shopify/queries/seo.dart';

late final Shopify _shopify;

class Shopify {
  final Uri _url;
  final String _storeFrontApiToken;

  static void create({
    required String shop,
    required String storeFrontApiToken,
    StoreFrontApiVersion storeFrontApiVersion = StoreFrontApiVersion.v2021_07,
  }) =>
      _shopify = Shopify._(
        shop: shop,
        storeFrontApiToken: storeFrontApiToken,
        storeFrontApiVersion: storeFrontApiVersion,
      );

  static get instance => _shopify;

  Shopify._({
    required String shop,
    required String storeFrontApiToken,
    required StoreFrontApiVersion storeFrontApiVersion,
  })  : _url = Uri.parse(
            'https://$shop.myshopify.com/api/${storeFrontApiVersion.value}/graphql.json'),
        _storeFrontApiToken = storeFrontApiToken;

  Future<dynamic> runQuery(
    List<RootQuery> queries, {
    String? queryName,
  }) async {
    // TODO query name is in wrong place
    final query = '${queryName != null ? 'query $queryName ' : ''}{\n'
        '${queries.map((root) => root.query).join('\n')}'
        '\n}';

    return await runRawQuery(query);
  }

  Future<dynamic> runRawQuery(String query) async {
    final response = await http.post(_url,
        headers: {
          'content-type': 'application/graphql',
          'X-Shopify-Storefront-Access-Token': _storeFrontApiToken,
        },
        body: query);

    // TODO handle actual response alongside errors with exceptions with enum on type or something
    // print(query);
    print(response.body);
    return jsonDecode(response.body)['data'];
  }
}

enum StoreFrontApiVersion {
  v2020_04,
  v2021_07,
}

extension on StoreFrontApiVersion {
  /// String representation of the api version.
  String get value {
    switch (this) {
      case StoreFrontApiVersion.v2020_04:
        return '2020-04';
      case StoreFrontApiVersion.v2021_07:
        return '2021-07';
    }
  }

  /// Helper for different API versions where not all fields exist.
  T map<T>(T Function(StoreFrontApiVersion version) f) => f(this);
}

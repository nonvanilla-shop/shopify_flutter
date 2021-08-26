import 'package:flutter/material.dart';
import 'package:shopify/shopify.dart';

void main() {
  Shopify.create(
    shop: 'shop-name',
    storeFrontApiToken: 'your-api-key',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopify Example',
      theme: ThemeData(primaryColor: Colors.redAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Future<void> getData() async {
    final shopify = Shopify.instance;
    final data = await shopify.runQuery([
      ShopifyQuery.products()
        ..withFields(
          availableForSale: true,
          compareAtPriceRange: ShopifyProductPriceRange()
            ..withFields(
              maxVariantPrice: ShopifyMoney()
                ..withFields(
                  amount: true,
                ),
            ),
          createdAt: true,
          description: true,
          descriptionHtml: true,
          handle: true,
          id: true,
          onlineStoreUrl: true,
          options: ShopifyProductOptions()
            ..by(first: 5)
            ..withFields(
              id: true,
              name: true,
              values: true,
            ),
          priceRange: ShopifyProductPriceRange()
            ..withFields(
              maxVariantPrice: ShopifyMoney()
                ..withFields(
                  amount: true,
                ),
            ),
          productType: true,
          publishedAt: true,
          requiresSellingPlan: true,
          seo: ShopifySeo()
            ..withFields(
              description: true,
              title: true,
            ),
          tags: true,
          title: true,
          totalInventory: true,
          updatedAt: true,
          variantBySelectedOptions: ShopifyProductVariant()
            ..withFields(
              weight: true,
            ),
          // selectedOptions: true,
          vendor: true,
        )
        ..by(first: 4)
      // ..as(Article.fromJson),
    ]);

    // print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: getData,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

# [WIP] Shopify

To set everything up call Shopify.create(...).

```
void main() {
  Shopify.create(
    shop: 'your-shop-name',
    storeFrontApiToken: 'your-key',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopify Example',
      theme: ThemeData(primaryColor: Colors.redAccent),
      home: MyHomePage(...),
    );
  }
}
```

To then run queries you need the Shopify class instance as well as the abstract ShopifyQuery class. 

```
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
          seo: ShopifySeo()
            ..withFields(
              description: true,
              title: true,
            ),
          tags: true,
          title: true,
        )
        ..by(first: 4)
        ..as(Product.fromJson),
]);
```

## ShopifyQuery
Every class exposed by ShopifyQuery has a withFields, a by (if needed) and an as method.

### withFields
The with fields methods has to types of parameters. Primitive fields (like `title`) as well as Classes implementing the Query interface.  For the primitive fields you simply supply true for it to be included into the query. For the nested Queries you simply supply an instance of the type requested by the parameter (`withFields` and optionally `by` will exist on those classes while `as` only exists for top level queries.

### by
Limits on the query like `first` or `after` which will give you the first n results and every result after the specified parameter respectively. 

### as
A convenience method to parse the raw json response. If not supplied the query will return a map of query name (key) and the data (json or parsed - as a value).


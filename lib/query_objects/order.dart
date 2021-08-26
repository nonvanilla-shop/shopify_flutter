// import 'package:shopify/queries/query.dart';
// import 'package:shopify/queries/successful_fulfillments.dart';
//
// import 'metafield.dart';
//
// class ShopifyOrder extends Query {
//   late final String _queryBody;
//   String? _queryHeader;
//
//   void withFields({
//     /// The reason for the order's cancellation.
//     /// Returns null if the order wasn't canceled.
//     bool cancelReason = false,
//
//     /// The date and time when the order was canceled.
//     /// Returns null if the order wasn't canceled.
//     bool canceledAt = false,
//
//     /// The code of the currency used for the payment.
//     bool currencyCode = false,
//
//     /// The subtotal of line items and their discounts,
//     /// excluding line items that have been removed.
//     /// Does not contain order-level discounts, duties,
//     /// shipping costs, or shipping discounts. Taxes are not
//     /// included unless the order is a taxes-included order.
//     bool currentSubtotalPrice = false,
//
//     /// The total cost of duties for the order, including refunds.
//     bool currentTotalDuties = false,
//
//     /// The total amount of the order, including duties, taxes and
//     /// discounts, minus amounts for line items that have been removed.
//     bool currentTotalPrice = false,
//
//     /// The total of all taxes applied to the order, excluding taxes
//     /// for returned line items.
//     bool currentTotalTax = false,
//
//     /// The locale code in which this specific order happened.
//     bool customerLocale = false,
//
//     /// The unique URL that the customer can use to access the order.
//     bool customerUrl = false,
//
//     /// Whether the order has had any edits applied or not.
//     bool edited = false,
//
//     /// The customer's email address.
//     bool email = false,
//
//     /// The financial status of the order.
//     bool financialStatus = false,
//
//     /// The fulfillment status for the order.
//     bool fulfillmentStatus = false,
//
//     /// Globally unique identifier.
//     bool id = false,
//
//     /// Returns a metafield found by namespace and key.
//     ShopifyMetafield? metafield,
//
//     /// Unique identifier for the order that appears on the order.
//     /// For example, #1000 or _Store1001.
//     bool name = false,
//
//     /// A unique numeric identifier for the order for use by
//     /// shop owner and customer.
//     bool orderNumber = false,
//
//     /// The total cost of duties charged at checkout.
//     bool originalTotalDuties = false,
//
//     /// The total price of the order before any applied edits.
//     bool originalTotalPrice = false,
//
//     /// The customer's phone number for receiving SMS notifications.
//     bool phone = false,
//
//     /// The date and time when the order was imported. This value can
//     /// be set to dates in the past when importing from other systems.
//     /// If no value is provided, it will be auto-generated based on
//     /// current date and time.
//     bool processedAt = false,
//
//     /// The address to where the order will be shipped.
//     bool shippingAddress = false,
//
//     /// The discounts that have been allocated onto the shipping
//     /// line by discount applications.
//     bool shippingDiscountAllocations = false,
//
//     /// The unique URL for the order's status page.
//     bool statusUrl = false,
//
//     /// Price of the order before duties, shipping and taxes.
//     bool subtotalPrice = false,
//
//     /// List of the order’s successful fulfillments.
//     ShopifySuccessfulFulfillments? successfulFulfillments,
//
//     /// The sum of all the prices of all the items in the order,
//     /// duties, taxes and discounts included (must be positive).
//     bool totalPrice = false,
//
//     /// The total amount that has been refunded.
//     bool totalRefunded = false,
//
//     /// The total cost of shipping.
//     bool totalShippingPrice = false,
//
//     /// The total cost of taxes.
//     bool totalTax = false,
//   }) {
//     _queryBody = '${cancelReason ? 'cancelReason\n' : ''}'
//         '${canceledAt ? 'canceledAt\n' : ''}'
//         '${currencyCode ? 'currencyCode\n' : ''}'
//         '${currentSubtotalPrice ? 'currentSubtotalPrice\n' : ''}'
//         '${currentTotalDuties ? 'currentTotalDuties\n' : ''}'
//         '${currentTotalPrice ? 'currentTotalPrice\n' : ''}'
//         '${currentTotalTax ? 'currentTotalTax\n' : ''}'
//         '${customerLocale ? 'customerLocale\n' : ''}'
//         '${customerUrl ? 'customerUrl\n' : ''}'
//         '${edited ? 'edited\n' : ''}'
//         '${email ? 'email\n' : ''}'
//         '${financialStatus ? 'financialStatus\n' : ''}'
//         '${fulfillmentStatus ? 'fulfillmentStatus\n' : ''}'
//         '${id ? 'id\n' : ''}'
//         '${metafield != null ? '${metafield.query}' : ''}'
//         '${name ? 'name\n' : ''}'
//         '${orderNumber ? 'orderNumber\n' : ''}'
//         '${originalTotalDuties ? 'originalTotalDuties\n' : ''}'
//         '${originalTotalPrice ? 'originalTotalPrice\n' : ''}'
//         '${phone ? 'phone\n' : ''}'
//         '${processedAt ? 'processedAt\n' : ''}'
//         '${shippingAddress ? 'shippingAddress\n' : ''}'
//         '${shippingDiscountAllocations ? 'shippingDiscountAllocations\n' : ''}'
//         '${statusUrl ? 'statusUrl\n' : ''}'
//         '${subtotalPrice ? 'subtotalPrice\n' : ''}'
//         '${successfulFulfillments != null ? '${successfulFulfillments.query}' : ''}'
//         '${totalPrice ? 'totalPrice\n' : ''}'
//         '${totalRefunded ? 'totalRefunded\n' : ''}'
//         '${totalTax ? 'totalTax\n' : ''}';
//   }
//
//   void by({
//     String? after,
//     String? before,
//     int? first,
//     int? last,
//     bool reverse = false,
//   }) {
//     final buffer = <String>[];
//     if (after != null) buffer.add('after: $after');
//     if (before != null) buffer.add('before: $before');
//     if (first != null) buffer.add('first: $first');
//     if (last != null) buffer.add('last: $last');
//     if (reverse) buffer.add('reverse');
//
//     _queryHeader = buffer.isEmpty ? '' : '(${buffer.join(', ')})';
//   }
//
//   @override
//   String get query => 'orders ${_queryHeader ?? ''} {\n'
//       '$_queryBody'
//       '}';
// }

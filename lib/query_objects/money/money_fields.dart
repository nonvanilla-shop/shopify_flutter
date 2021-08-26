class MoneyFields {
  late final String fields;

  void withFields({
    ///  Decimal money amount.
    bool amount = false,

    /// Currency of the money.
    bool currencyCode = false,
  }) =>
      fields = '${amount ? 'amount\n' : ''}'
          '${currencyCode ? 'currencyCode\n' : ''}';
}

class Stock {
  final String name;
  final String ticker;
  final String? currency;
  final String exchange;
  final double? openingPrice;
  final double? closingPrice;
  final int? volume;
  final bool? isMarketOpen;
  final DateTime? dateTime;
  Stock(
      {required this.name, //model for data
      this.currency,
      required this.ticker, //Required data is going to be fetched and for the not required data ones it will return null if not found
      required this.exchange,
      this.openingPrice,
      this.closingPrice,
      this.volume,
      this.isMarketOpen,
      this.dateTime});
  factory Stock.fromJson(json) {//JSON is a structure of data based off of javascript syntax
    print(json);
    return Stock(
        name: json['name'] ?? 'Offline',
        // if(json != null){
        //   return json
        // } else {
        //   return 'offline'
        // }  Same thing as line above
        //If Json name null if not it is going to return offline
        currency: json['currency'] ?? 'Offline',
        ticker: json['symbol'] ?? 'Offline',
        exchange: json['exchange'] ?? 'Offline',
        openingPrice: double.parse(json['open'] ?? '0'),
        closingPrice: double.parse(json['close'] ?? '0'),
        volume: int.parse(json['volume'] ?? '0'),
        isMarketOpen: json['is_market_open'] ?? false);
  }
}

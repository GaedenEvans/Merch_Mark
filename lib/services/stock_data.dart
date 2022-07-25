//AccessKey:9d08367dfc704fdca8e3b98c4e212d8f

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:merch_mark/utils/models/stock.dart';
class StockAPI {
  final String baseUrl = "https://api.twelvedata.com";//goes to this website 
  final String apiKey = '9d08367dfc704fdca8e3b98c4e212d8f';//Uniqutely indentifies my access to api
  Future<List<Stock>> fetchStocks(exchange) async {//Send request for stocks then makes into list
    final response =
        await http.get(Uri.parse('$baseUrl/stocks?exchange=$exchange'));
    List<Stock> stockList = [];
    if (response.statusCode == 200) {
      final jsonStocks = jsonDecode(response.body);
      for (var stock in jsonStocks['data']) {
        stockList.add(Stock.fromJson(stock));
       
      }
    } else {
      log('failed to get data');
    }
    return stockList;
  }
  Future<Stock?> fetchStock(String ticker) async {//Sends request for ticker then turns into list 
    final response = await _getResponse('quote?symbol=$ticker');
    if (response.statusCode == 200) {//200 means received data 
      final jsonStock = jsonDecode(response.body);
      print(jsonStock);
     return (Stock.fromJson(jsonStock));
    }
    return null;
  }
  Future<Response> _getResponse(String route) {//Route to automatic get Api
    return http.get(Uri.parse('$baseUrl/$route&apikey=$apiKey'));
  }
}









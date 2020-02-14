import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = 'C6476F6C-B727-48A2-80DD-D6E89256DF1F';
const coinChartUrl = 'https://rest.coinapi.io/v1/exchangerate';

const List<String> currenciesList = [
  'KRW',
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinDataBTC(String selectedCurrency) async {
    String requestUrl = '$coinChartUrl/${cryptoList[0]}/$selectedCurrency/?apikey=$apiKey';

    http.Response response = await http.get(requestUrl);

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);

      var lastPrice = decodedData['rate'];

      return lastPrice.toStringAsFixed(0);
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }
  Future getCoinDataETH(String selectedCurrency) async {
    String requestUrl = '$coinChartUrl/${cryptoList[1]}/$selectedCurrency/?apikey=$apiKey';

    http.Response response = await http.get(requestUrl);

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);

      var lastPrice = decodedData['rate'];

      return lastPrice.toStringAsFixed(0);
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }
  Future getCoinDataLTC(String selectedCurrency) async {
    String requestUrl = '$coinChartUrl/${cryptoList[2]}/$selectedCurrency/?apikey=$apiKey';

    http.Response response = await http.get(requestUrl);

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);

      var lastPrice = decodedData['rate'];

      return lastPrice.toStringAsFixed(0);
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }
}

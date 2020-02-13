import 'package:http/http.dart' as http;
import 'dart:convert';
const apiKey = 'C6476F6C-B727-48A2-80DD-D6E89256DF1F';
const coinChartUrl = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD';

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

  Future getCoinData() async {

    String requestUrl = '$coinChartUrl?apikey=$apiKey';

    http.Response response = await http.get(requestUrl);

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);

      var lastPrice = decodedData['rate'];

      return lastPrice;
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }

}

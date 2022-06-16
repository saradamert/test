
import 'package:testadasoft/model/datamodel.dart';
import 'package:testadasoft/model/exchang.dart';
import 'package:testadasoft/service/httpRe.dart';

class ApiClient {

  static Future getApiExchange(String to,String from , String amount) async {
    try {
      String url = 'https://api.apilayer.com/fixer/convert';
      Map<String,dynamic> response = (await HttpRequest.get(url,params: {
        "apikey":"7r2dRwyxfOUz62VXAN3o9VsW2uIMVivC",
        "to":to,
        "from":from,
        "amount":amount
      }));
      // return response;
      return Exchange.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
  // static Future getAllFeed() async {
  //   try {
  //     String url = 'https://metals-api.com/api/latest';
  //     Map<String,dynamic> response = (await HttpRequest.get(url,params: {
  //       "access_key":"6n25xc2p88yuqnod6v4e3yj8mlmbrcj7ggixbqsy5oik7q3wa1i64bqa8b32",
  //
  //     }));
  //     return response;
  //     // return DataModel.fromJson(response);
  //   } catch (e) {
  //     throw e;
  //   }
  // }

// final Uri currencyURL = Uri.https("free.currconv.com", "/api/v7/convert",
//     {"apiKey": " fb59357fa0a7289829d5"});

// Future<List<String>> getCurrencies() async {
//   http.Response res = await http.get(currencyURL);
//   if (res.statusCode == 200) {
//     var body = jsonDecode(res.body);
//     var list = body['result'];
//     List<String> currencies = (list.keys).toList();
//     return currencies.toList();
//   } else {
//     throw Exception('faile');
//   }
// }
}

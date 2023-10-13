import 'package:http/http.dart' as http;
import 'dart:convert';

class MonedasProvider {
  final apiUrl = 'https://api.gael.cloud/general/public/monedas';

  Future<List<dynamic>> getMonedas() async {
    var url = Uri.parse(apiUrl);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return [];
    }
  }
}

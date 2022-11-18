import 'package:http/http.dart' as http;
import 'package:monteirolojjja/correios/result_cep.dart';

class ViaCepService {
  static Future<ResultCep> fetchCep({String? cep}) async {
    var url = Uri.parse('https://viacep.com.br/ws/$cep/json/');

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return ResultCep.fromJson(response.body);
    } else {
      throw Exception('Requisição inválida!');
    }
  }
}

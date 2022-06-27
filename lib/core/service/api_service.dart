import 'package:diyet_uygulama/component/constant/api_constant.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<http.Response> getData() async {
    try {
      var _url = Uri.parse(ApiConstant().getListMenu());
      return http.get(_url);
    } catch (e) {
      throw Exception(e);
    }
  }
}

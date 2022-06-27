import 'package:diyet_uygulama/core/service/login_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class LoginViewModel {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future login() async {
    var response = await LoginService().login(usernameController.text, passwordController.text);
    if (response) {
      // home'a götür
      // Hive kullan , logine bir daha dönmemesi için
    } else {
      // hata mesajı
    }
  }

  //future builder ile çağıralacak

  /// Future getData() async {
  ///   var res = await ApiService().getData();
  ///   var model = FoodModel.fromJson(jsonDecode(res.body));
  /// }

  void gotoRegister(BuildContext context) {
    /// Navigator.push(
    ///     context,
    ///     MaterialPageRoute(
    ///     //  builder: (context) => RegisterScreen(),
    ///     ));
  }
}

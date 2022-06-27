import 'package:diyet_uygulama/screen/login/viewModel/login_view_model.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget with LoginViewModel {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Diyet Uygulama'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 3,
            ),
            const Center(
              child: SizedBox(
                height: 100,
                width: 100,
                // child: Image.asset('')
                child: FlutterLogo(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Giriş',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Kullanıcı Adı'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Şifre'),
            ),
            const SizedBox(
              height: 20,
            ),
            /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.search),
                Icon(Icons.search),
                Icon(Icons.search),
              ],
            ),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(onTap: () {}, child: const Text('Sifremi Unuttum')),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  child: const Text('Giriş Yap'),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(onTap: () => gotoRegister(context), child: const Center(child: Text('Hesabınız yok mu?'))),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

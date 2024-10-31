import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/carAdd.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController kullaniciAdi = TextEditingController();
  TextEditingController kullaniciSifre = TextEditingController();
  bool _obscureText = false;
  final formsifre = 1;
  final formkullanici = "m";

  final formKey = GlobalKey<FormState>();


    @override
   void dispose() {
    kullaniciAdi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    "Hoşgeldin, Sürücü ",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Hesabınıza giriş yapın"),
                  SizedBox(height: 45),
                  TextFormField(
                    controller: kullaniciAdi,
                    decoration: InputDecoration(
                      labelText: "Kullanıcı Adı",
                      prefix: Icon(Icons.person_2_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    onChanged: (value) {

                    },
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Lütfen Kullanıcı Adınızı Giriniz.";
                        }
                      }
                    },
                    onSaved: (newValue) {
                    },
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: kullaniciSifre,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: "Şifre",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_obscureText == false) {
                              _obscureText = true;
                            } else {
                              _obscureText = false;
                            }
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      prefix: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    onChanged: (value) {},
                    validator: (value) {
                      print(value);
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Lütfen Şifrenizi Giriniz.";
                        }
                      }
                    },
                    onSaved: (newValue) {
                    },
                  ),
                  SizedBox(height: 45),
                  SizedBox(
                    width: 300.0,
                    height: 49,
                    child: ElevatedButton(
                        onPressed: () {
                          print("gönderildi");
                          final uygunmu = formKey.currentState?.validate();
                          if (formsifre.toString() == kullaniciSifre.text && formkullanici == kullaniciAdi.text) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => carAdd(),
                              ),
                            );
                            formKey.currentState?.save();
                          } else {
                            print("Kullanıcı adı veya şifrenizi kontrol ediniz");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: Text(
                          "Giriş Yap",
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 75),
                    child: Row(
                      children: [
                        Text("Hesabınız yok mu?"),
                        TextButton(
                          style: TextButton.styleFrom(),
                          onPressed: () {},
                          child: const Text('Üye ol'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

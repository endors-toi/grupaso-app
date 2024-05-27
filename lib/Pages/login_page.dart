import 'package:flutter/material.dart';
import 'package:grupaso_app/Pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  String resultados = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //LOGO sdadsa

                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('/images/grupaso.png'),
                    ),
                  ),
                ),
                //Email
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF0F3FF),
                          border: Border.all(
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: emailCtrl,
                          decoration: InputDecoration(
                              icon: Icon(Icons.account_circle_rounded),
                              border: InputBorder.none,
                              hintText: 'Ingrese Email'),
                        ),
                      ),
                    )),
                //Password
                Divider(
                  color: Colors.transparent,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF0F3FF),
                          border: Border.all(
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: passCtrl,
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(Icons.key),
                              border: InputBorder.none,
                              hintText: 'Ingrese Contraseña'),
                        ),
                      ),
                    )),

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {
                        String email = emailCtrl.text;
                        String password = passCtrl.text;

                        print('EMAIL:$email EDAD:$password');
                        if (email == 'user1@mail.com' &&
                            password == 'pass123') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        } else {
                          setState(() {
                            resultados = 'EMAIL:$email PASSWORD:$password';
                            if (email != 'user1@mail.com' &&
                                password != 'pass123') {
                              showDialog(
                                  barrierDismissible: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        children: [
                                          Icon(Icons.error,
                                              color: Colors.red.shade800),
                                          Text(
                                            '  ERROR',
                                            style: TextStyle(
                                                color: Colors.red.shade800),
                                          ),
                                        ],
                                      ),
                                      content: Text(
                                          'El usuario o la contraseña son incorrectos.',
                                          style: TextStyle(
                                              color: Colors.red.shade900)),
                                    );
                                  });
                            }
                          });
                        }
                      },
                      child: Text(
                        "Iniciar Sesión",
                        style: TextStyle(
                            color: Color(0xffEEF7FF),
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

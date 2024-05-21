import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color(0xffCDE8E5),
        Color(0xffEEF7FF),
        Color(0xff7AB2B2),
        Color(0xff4D869C)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //LOGO sdadsa

                Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),

                //Email
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffCDE8E5),
                          border: Border.all(
                            color: Color(0xff4D869C),
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
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
                          color: Color(0xffCDE8E5),
                          border: Border.all(
                            color: Color(0xff4D869C),
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
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
                      color: Color(0xff4D869C),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Iniciar Sesión",
                        style: TextStyle(
                            color: Color(0xffEEF7FF),
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

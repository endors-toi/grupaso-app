import 'package:flutter/material.dart';
import 'package:grupaso_app/main/menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController correo = TextEditingController();
  TextEditingController contrasena = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7C03FF),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/grupaso.png"),
              height: 150,
            ),
            Text("Inicio de sesión"),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 30),
              child: Column(
                children: [
                  TextField(
                    controller: correo,
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle_rounded),
                      hintText: "Correo",
                    ),
                  ),
                  TextField(
                    controller: contrasena,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.key),
                      hintText: "Contraseña",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: FilledButton(
                      onPressed: () {
                        if (correo.text == "correo@gmail.com" &&
                            contrasena.text == "contrasena") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuPage()));
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.error,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                      ),
                                      Text("Datos invalidos")
                                    ],
                                  ),
                                );
                              });
                        }
                      },
                      child: Text('Iniciar sesión'),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xFF7C03FF))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

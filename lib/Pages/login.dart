import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:grupaso_app/Pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _emailController.text;
    String password = _passwordController.text;

    if (username == 'kappan' && password == 'hola1234') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()), // Reemplaza NextPage con la página a la que quieres navegar
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Error de credenciales'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        title: Text('Inicio de Sesión'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/grupaso.png'))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Form(
                    child: Column(
                      children: [
                        Divider(
                          height: 25,
                          indent: 70,
                          endIndent: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailController,
                            decoration: InputDecoration(
                              icon: Icon(MdiIcons.accountOutline, color: Colors.deepPurple,),
                              labelText: 'Ingrese su correo electrónico'
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              icon: Icon(MdiIcons.keyOutline, color: Colors.deepPurple,),
                              labelText: 'Ingrese su contraseña'
                            ),
                          ),
                        ),
                        Container(
                          height: 40, 
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.deepPurpleAccent)),
                            child: FilledButton(
                              onPressed: _login, 
                              child: Text('Iniciar sesion'), 
                              style: ButtonStyle(backgroundColor: WidgetStateColor.transparent),)
                        )
                      ]
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('¿No tienes una cuenta?'),
                      InkWell(
                        onTap: () {
                        },
                        child: Text('Que pena :p', style: TextStyle(color: Colors.purple, decoration: TextDecoration.underline),)),
                    ],
                  ),
                ),
              ]
            ),
          ),
        ),
      )
    );
  }
}
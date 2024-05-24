import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
            Form(
              child: Container(
                width: 300,
                child: Column(
                  children: [
                    Divider(
                      height: 25,
                      indent: 70,
                      endIndent: 70,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      decoration: InputDecoration(
                        icon: Icon(MdiIcons.accountOutline, color: Colors.deepPurple,),
                        labelText: 'Ingrese su correo electrónico'
                      ),
                    ),
                    Container(height: 30,),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        icon: Icon(MdiIcons.keyOutline, color: Colors.deepPurple,),
                        labelText: 'Ingrese su contraseña'
                      ),
                    ),
                    Container(height: 30,),
                    Container(
                      height: 40, 
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.deepPurple)),
                        child: Center(child: Text('iniciar sesión', style: TextStyle(color: Colors.white),
                        ),
                      )
                    )
                  ]
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('¿No tienes una cuenta?'),
                  Text('Registrate', style: TextStyle(color: Colors.purple, decoration: TextDecoration.underline),),
                ],
              ),
            ),
          ]
        ),
      )
    );
  }
}
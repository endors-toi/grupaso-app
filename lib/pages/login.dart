import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  String mensajeError = "";
  String usuarioValido = "user1@gmail.com";
  String contrasenaValida = "user1";

  void Validador() {
    setState(() {
      if (user.text.isEmpty || pass.text.isEmpty) {
        mensajeError = 'Campos vacios';
        showDialog(
          context: context, 
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("$mensajeError"),
              actions: <Widget>[
                TextButton(
                  child: Text('Aceptar'),
                  onPressed: () {
                    mensajeError = "";
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
        );
      } else if (user.text != usuarioValido || pass.text != contrasenaValida){
        mensajeError = 'Datos invalidos';
        showDialog(
          context: context, 
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("$mensajeError"),
              actions: <Widget>[
                TextButton(
                  child: Text('Aceptar'),
                  onPressed: () {
                    mensajeError = "";
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
        );
      } else {
        showDialog(
          context: context, 
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("Sesion Iniciada"),
              actions: <Widget>[
                TextButton(
                  child: Text('Aceptar'),
                  onPressed: () {
                    mensajeError = "";
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7C03FF), Color(0xFF05F4FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 50.0),
                TextField(
                  controller: user, // Asigna el controlador aquí
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  controller: pass, // Asigna el controlador aquí
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Validador();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, 
                        foregroundColor: const Color(0xFF7C03FF), 
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF7C03FF),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

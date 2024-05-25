import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //el if que verifica usuario y contra
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == 'kappan' && password == 'hola1234') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OtraPagina()), // Reemplaza NextPage con la página a la que quieres navegar
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Credenciales incorrectas'),
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
        title: Text('Inicio de Sesion', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50,10,50,10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagen
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/grupaso.png'))
                  ),
                ),
                  
                //linea
                Divider(
                  indent: 70,
                  endIndent: 70,
                ),
            
                // form
                Form(child: Column(children: [
                  
                  //usuario
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,30),
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        icon: Icon(MdiIcons.accountOutline, color: Colors.deepPurple,),
                        labelText: 'Ingrese Usuario'
                      ),
                          
                    ),
                  ),
                  
                  //contra
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,30),
                    child: TextField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        icon: Icon(MdiIcons.keyOutline, color: Colors.deepPurple,),
                        labelText: 'Ingrese Contrasena'
                      ),
                          
                    ),
                  ),
                  
                  //boton
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,15),
                    child: FilledButton(
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.deepPurple)),
                      onPressed: _login, 
                      child: Text('Iniciar Sesion')
                    ),
                  ),
                  
                  //subtitulo
                  Text('¿Problemas para iniciar sesion?'),
                  InkWell(
                    onTap: () {},
                    child: Text('Olvide mi contrasena', style: TextStyle(fontSize: 13, decoration: TextDecoration.underline, color: Colors.deepPurple.shade500),)
                    ),
                  
                ],))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class OtraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      body: Center(
        child: Text('[aqui va algo]'),
      ),
    );
  }
}
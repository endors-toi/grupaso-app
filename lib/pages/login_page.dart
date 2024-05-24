import 'package:flutter/material.dart';
import 'package:grupaso_app/pages/home_page.dart';
import 'package:grupaso_app/services/auth_service.dart';
import 'package:grupaso_app/widgets/utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  User? _user;

  // Colores
  List<Color> _colors = [
    Color(0xFF7C03FF),
    Color(0xFF05F4FF),
    Color(0xFFFFFFFF),
  ];

  // Form
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Container(
        decoration: BoxDecoration(
          color: _colors[2],
        ),
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', width: 300),
            SizedBox(height: 16),
            TextFormField(
              controller: _emailController,
              style: TextStyle(color: _colors[2]),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: _colors[0],
                icon: Icon(MdiIcons.accountCircle, color: _colors[0]),
                hintText: 'Correo',
                hintStyle: TextStyle(color: _colors[2]),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, ingrese su correo';
                }
                return null;
              },
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: _colors[1],
                icon: Icon(MdiIcons.lock, color: _colors[0]),
                hintText: 'Contraseña',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, ingrese su contraseña';
                }
                return null;
              },
            ),
            SizedBox(height: 8),
            FilledButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showSnackBar(context, 'Iniciando sesión...');
                  _user = AuthService()
                      .login(_emailController.text, _passwordController.text);
                  if (_user != null) {
                    navigateHome(context, _user!);
                  } else {
                    showSnackBar(context, 'Credenciales incorrectas');
                  }
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(_colors[0]),
                foregroundColor: WidgetStateProperty.all(_colors[2]),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              child: Text(
                "Iniciar Sesión",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 16),
                Text("¿No tienes cuenta?"),
                TextButton(
                  onPressed: () {
                    showSnackBar(context, 'Registrando...');
                  },
                  child: Text("Regístrate"),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

navigateHome(BuildContext context, User user) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => HomePage(user: user)));
}

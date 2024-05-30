import 'package:flutter/material.dart';
import 'package:grupaso_app/services/auth_service.dart';

class HomePage extends StatelessWidget {
  final User? user;

  HomePage({this.user}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "${user?.displayName ?? 'Guest'}",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color(0xFF7C03FF)),
                foregroundColor: WidgetStateProperty.all(Color(0xFFFFFFFF)),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              child: Text('Cerrar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}

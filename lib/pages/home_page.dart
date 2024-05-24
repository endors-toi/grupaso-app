import 'package:flutter/material.dart';
import 'package:grupaso_app/services/auth_service.dart';

class HomePage extends StatelessWidget {
  final User? user;
  HomePage({this.user}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Bienvenido ${user?.displayName}!"),
    ));
  }
}

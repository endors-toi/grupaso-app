import 'package:flutter/material.dart';
import 'package:grupaso_app/pages/home_page.dart';
import 'package:grupaso_app/services/auth_service.dart';

void showSnackBar(
  BuildContext context, {
  required String message,
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: duration,
    ),
  );
}

void navigateHome(BuildContext context, {User? user}) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => HomePage(user: user)));
}

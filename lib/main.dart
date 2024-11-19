import 'package:flutter/material.dart';
import 'package:lodon_mart/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Mental Health Tracker',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 16, 23, 40),
            ).copyWith(
              primary: const Color.fromARGB(255, 16, 23, 40),
              // secondary: const Color.fromARGB(255, 22, 32, 55),
              secondary: const Color.fromARGB(255, 25, 37, 65),
            )),
        home: const LoginPage(),
      ),
    );
  }
}

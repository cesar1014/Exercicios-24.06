import 'package:flutter/material.dart';
import 'package:flutter_rotas/login.dart';
import 'package:flutter_rotas/inicio.dart'; // Adicionar import para Inicio

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const Login(),
        '/home': (BuildContext context) =>
            const Inicio(), // Adicionar rota para Inicio
      },
    );
  }
}

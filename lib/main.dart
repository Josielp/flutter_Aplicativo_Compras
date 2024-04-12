import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'intro.dart';
import 'login.dart';
import 'cadastro.dart';
import 'pdf.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var routes2 = <String, WidgetBuilder>{
      //apelidar rotas
      't0': (context) => HomeScreen(),
      't1': (context) => LoginScreen(),
      't2': (context) => ShoppingListScreen(),
      't3': (context) => PdfHomePage(),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Lista de Compras',

      //rotas de navegação

      initialRoute: 't0',
      routes: routes2,
    );
  }
}

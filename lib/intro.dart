import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crie e gerencie suas listas de compras'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AppInfoScreen()),
            );
          },
          child: Icon(Icons.checklist),
        ),
      ),
    );
  }
}

class AppInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(height: 16.0),
            // ignore: prefer_const_constructors
            Text('Informações sobre o Aplicativo',
                 // ignore: prefer_const_constructors
                 style: TextStyle(
                  fontFamily: 'Times New Roman',
                    fontSize: 20,)),
            SizedBox(height: 16.0),
            Text('Aplicativo desenvolvido na disciplina ',),
            Text('Progamação Dispositivos Móveis.'),
            Text('Ministrado pelo Professor Rodrigo Plotze'),
            Text('Informações sobre o projeto',
                 style: TextStyle(
                  fontFamily: 'Times New Roman',
                    fontSize: 16,)),
            Text('Tema escolhido: A proposta do aplicativo é'),
            Text('criar uma tela de login'),
            Text('ao acessar é direcionado para adicionar '),
            Text('sua lista de compras.'),
             SizedBox(height: 16.0),
            Text('Objetivo do aplicativo '),
            Text('O objetivo é acessar o aplicativo através do login'),
            Text('Clique no icone + para adicionar sua lista'),
            Text('Clique sobre o nome da lista para adicionar seus itens'),
            Text('Clique sobre opções para editar, remover ou check list'),
             SizedBox(height: 16.0),
            Text('Desenvolvedor'),
            Text('By JOSIEL PEREIRA',
            style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 26,)),

            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 't1');
              },
              child: Text('Criar Conta'),
            ),

            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 't3');
              },
              child: Text('Abrir PDF'),
            ),
          ],
        ),
      ),
    );
  }
}
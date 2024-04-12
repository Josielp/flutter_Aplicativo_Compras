// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(PdfHomePage());
}

class PdfHomePage extends StatelessWidget {
  const PdfHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detalhando o código'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tela login ',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Este código é um exemplo de um aplicativo de login em Flutter. Vamos analisar o código passo a passo: ',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '1. Primeiro, importa o pacote `flutter/material.dart`, que contém os widgets e recursos necessários para construir a interface do usuário do aplicativo. ',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '2. Em seguida, define a classe `LoginScreen` como um estado mutável (`StatefulWidget`). Esta classe é responsável por construir a tela de login do aplicativo. ',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '3. Dentro da classe `LoginScreen`, são definidos dois controladores de texto (`TextEditingController`) para capturar os valores digitados nos campos de email e senha.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '4. A função `validateEmail` é definida para validar o formato do email digitado. Se o email não contiver um "@" ou ".", uma mensagem de erro será exibida. ',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '5. No método `build`, é construída a estrutura da tela de login. É utilizado o widget `Scaffold` como base, que fornece uma estrutura básica para a tela, incluindo uma barra de aplicativo (`AppBar`) e um corpo (`body`).',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '6. Dentro do corpo, é utilizado o widget `Padding` para adicionar um espaçamento em torno dos elementos da tela.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '7. É utilizado o widget `Column` para organizar os elementos verticalmente. Dentro da coluna, são adicionados os campos de texto (`TextField`) para o email e senha, bem como os botões de login, cadastro e recuperação de senha.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '8. O botão de login chama a função `validateEmail` ao ser pressionado. Se não houver erros de validação, o usuário será redirecionado para a próxima tela.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '9. O botão de cadastro abre um diálogo (`AlertDialog`) onde o usuário pode inserir seu nome e email para se cadastrar.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '10. O botão de recuperação de senha também abre um diálogo onde o usuário pode inserir sua nova senha e confirmá-la.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '11. As classes `RegisterScreen` e `ForgotPasswordScreen` são definidas como `StatelessWidget` e são responsáveis por construir as telas de cadastro e recuperação de senha, respectivamente. Essas telas também utilizam os controladores de texto e validação de formulário para capturar e validar os dados inseridos pelo usuário.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Tela Lista de Compras ',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Este código é um aplicativo Flutter para uma lista de compras. Vamos analisar o código passoa passo:',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '1. Primeiro, ele importa o pacote `flutter/material.dart`, que contém os widgets e temas doFlutter.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '2. Em seguida, ele define a função `main()`, que é o ponto de entrada do aplicativo. Nesta funçao, e e chama a função `runApp()` para iniciar o aplicativo, passando como parâmetro uma instância da classe `ShoppingListApp`.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '3. A classe `ShoppingListApp` é um widget `StatelessWidget` que representa o aplicativo em si. Ela possui um construtor constante e substitui o método `build()` para construir a interface do usuário do aplicativo.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '4. No método `build()`, ele retorna um widget `MaterialApp`, que é o widget raiz do aplicativo. Ele define o título do aplicativo como "Lista de Compras" e define um tema com a cor primária azul. Além disso, ele define a tela inicial do aplicativo como uma instância da classe `ShoppingListScreen`.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '5. A classe `ShoppingListScreen` é um widget `StatefulWidget` que representa a tela principal do aplicativo. Ela possui uma lista de objetos `ShoppingList` e substitui o método `build()` para construir a interface do usuário da tela.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '6. No método `build()`, ele retorna um widget `Scaffold`, que é um layout básico de material design. Ele define uma barra de aplicativo com o título "Lista de Compras" e um corpo que contém um widget `ListView.builder`. Este widget constrói uma lista de itens com base no tamanho da lista `shoppingLists`.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '7. Para cada item na lista `shoppingLists`, ele constrói um widget `ListTile` que exibe o nome do item. Ele também adiciona um ícone de verificação que muda de cor com base na propriedade `isCompleted` do item. Além disso, ele adiciona ícones de exclusão e edição para cada item.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '8. Ele também adiciona um botão de ação flutuante que exibe um diálogo para adicionar um novo item à lista.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '9. A classe `ShoppingList` representa um item da lista de compras. Ela possui propriedades como nome, lista de itens de compra, e um indicador de conclusão.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '10. A classe `ShoppingListItem` representa um item de compra na lista de compras. Ela possui propriedades como nome, quantidade, unidade e um indicador de compra.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '11. A classe `ShoppingListDetailScreen` é um widget `StatefulWidget` que representa a tela de detalhes de uma lista de compras. Ela possui uma lista de objetos `ShoppingItem` e substitui o método `build()` para construir a interface do usuário da tela.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '12. No método `build()`, ele retorna um widget `Scaffold` com uma barra de aplicativo que exibe o nome da lista de compras. Ele também constrói uma lista de itens de compra usando um widget `ListView.builder`.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '13. Para cada item na lista `shoppingItems`, ele constrói um widget `ListTile` que exibe o nome, quantidade e unidade do item. Ele também adiciona um ícone de verificação que muda de cor com base na propriedade `isFinished` do item. Além disso, ele adiciona um evento de toque para exibir um diálogo de edição para o item.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '14. Ele também adiciona um botão de ação flutuante que exibe um diálogo para adicionar um novo item à lista.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  '15. A classe `ShoppingItem` representa um item de compra na lista de compras. Ela possui propriedades como nome, quantidade, unidade e um indicador de conclusão.',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Voltar'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
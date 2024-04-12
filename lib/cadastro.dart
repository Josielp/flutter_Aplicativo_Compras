import 'package:flutter/material.dart';

void main() {
  runApp(const ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({Key? key}) : super(key: key);

  @override
  _ShoppingListScreenState createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final List<ShoppingList> shoppingLists = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Compras'),
      ),
      body: ListView.builder(
        itemCount: shoppingLists.length,
        itemBuilder: (context, index) {
          final shoppingList = shoppingLists[index];
          return ListTile(
            title: Text(shoppingList.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingListDetailScreen(
                    shoppingList: shoppingList,
                  ),
                ),
              );
            },
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.check_box),
                  color: shoppingList.isCompleted ? Colors.green : Colors.red,
                  onPressed: () {
                    setState(() {
                      shoppingList.isCompleted = !shoppingList.isCompleted;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      shoppingLists.removeAt(index);
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    _showEditListDialog(index);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _showAddListDialog,
      ),
    );
  }

  void _showAddListDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String newListName = '';

        return AlertDialog(
          title: const Text('Nova Lista'),
          content: TextField(
            onChanged: (value) {
              newListName = value;
            },
            decoration: const InputDecoration(
              labelText: 'Nome da Lista',
            ),
          ),
          actions: [
            ElevatedButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Adicionar'),
              onPressed: () {
                setState(() {
                  shoppingLists.add(ShoppingList(name: newListName));
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showEditListDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        String editedListName = shoppingLists[index].name;

        return AlertDialog(
          title: const Text('Editar Lista'),
          content: TextField(
            onChanged: (value) {
              editedListName = value;
            },
            decoration: const InputDecoration(
              labelText: 'Nome da Lista',
            ),
          ),
          actions: [
            ElevatedButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Salvar'),
              onPressed: () {
                setState(() {
                  shoppingLists[index].name = editedListName;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class ShoppingList {
  String name;
  final List<ShoppingListItem> items;
  bool isCompleted;

  ShoppingList(
      {required this.name,
      this.isCompleted = false,
      List<ShoppingListItem>? items})
      : items = items ?? [];
}

class ShoppingListItem {
  final String name;
  final int quantity;
  final String unit;
  bool isBought;

  ShoppingListItem({
    required this.name,
    required this.quantity,
    required this.unit,
    this.isBought = false,
  });
}

class ShoppingListDetailScreen extends StatefulWidget {
  final ShoppingList shoppingList;

  const ShoppingListDetailScreen({required this.shoppingList});

  @override
  _ShoppingListDetailScreenState createState() =>
      _ShoppingListDetailScreenState();
}

class _ShoppingListDetailScreenState extends State<ShoppingListDetailScreen> {
  final List<ShoppingItem> shoppingItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itens da Lista'),
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          final shoppingItem = shoppingItems[index];
          final itemController = TextEditingController(text: shoppingItem.name);

          return ListTile(
            title: Text(shoppingItem.name),
            subtitle: Text(
                'Quantidade: ${shoppingItem.quantity} ${shoppingItem.unit}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.check_box),
                  color: shoppingItem.isFinished ? Colors.green : Colors.red,
                  onPressed: () {
                    setState(() {
                      shoppingItem.isFinished = !shoppingItem.isFinished;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      shoppingItems.removeAt(index);
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    _showEditItemDialog(context, itemController, index);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _showAddItemDialog,
      ),
    );
  }

  void _showAddItemDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String newItemName = '';
        int newItemQuantity = 0;
        String newItemUnit = '';

        return AlertDialog(
          title: const Text('Novo Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  newItemName = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Nome do Item',
                ),
              ),
              TextField(
                onChanged: (value) {
                  newItemQuantity = int.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Quantidade',
                ),
              ),
              TextField(
                onChanged: (value) {
                  newItemUnit = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Unidade de Medida',
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Adicionar'),
              onPressed: () {
                setState(() {
                  shoppingItems.add(
                    ShoppingItem(
                      name: newItemName,
                      quantity: newItemQuantity,
                      unit: newItemUnit,
                    ),
                  );
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showEditItemDialog(
      BuildContext context, TextEditingController controller, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Editar Item'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'Nome do item',
            ),
          ),
          actions: [
            ElevatedButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Salvar'),
              onPressed: () {
                setState(() {
                  shoppingItems[index].name = controller.text;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class ShoppingItem {
  String name;
  int quantity;
  String unit;
  bool isFinished;

  ShoppingItem({
    required this.name,
    required this.quantity,
    required this.unit,
    this.isFinished = false,
  });
}
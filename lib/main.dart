import 'package:alibababelem/util/my_colors.dart';
import 'package:alibababelem/widget/carrinho/carriho_compras.dart';
import 'package:alibababelem/widget/home/body.dart';
import 'package:flutter/material.dart';
import 'package:alibababelem/widget/produto/produto_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: ProdutoScreen()
      home: CarrinhoScreen(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.fundo,
      body: const SingleChildScrollView(
        child: MyBody(),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: 'Cardápio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Pedidos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.delivery_dining),
          label: 'Pedidos',
        ),
      ], currentIndex: 0, selectedItemColor: MyColors.vermelho),
    );
  }




}

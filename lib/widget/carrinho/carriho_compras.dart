import 'package:alibababelem/util/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_touch_spin/flutter_touch_spin.dart';

class CarrinhoScreen extends StatefulWidget {
  const CarrinhoScreen({Key? key}) : super(key: key);

  @override
  _CarrinhoScreenState createState() => _CarrinhoScreenState();
}

class _CarrinhoScreenState extends State<CarrinhoScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.vermelho,
        title: Text("Meus Pedidos"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: MyColors.fundo,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: MyColors.getTitulo(
                              "Endereço de Entrega", Colors.black),
                        ),
                        Icon(
                          Icons.edit,
                          color: MyColors.vermelho,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: MyColors.vermelho, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Icon(
                                Icons.location_on,
                                color: MyColors.vermelho,
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Av. Visconde de Suza Franco, 1237"),
                            Text("Apto 1002. Umarizal"),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: MyColors.getTitulo("Pedido", Colors.black),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 30,
                            child: Card(
                              elevation: 2,
                              child:
                                  Image.asset("assets/pratos/filesultao.jpg"),
                            )),
                        Expanded(
                            flex: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Filé Sultão", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                  Text("+ Filé", style: TextStyle(color: Colors.black54),),
                                  Text("+ Molho", style: TextStyle(color: Colors.black54),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text("R\$50,00", style: MyColors.textoPreco),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: buildContador(),
                            )),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildContador() {
    return Container(
      height: 30,
      color: MyColors.fundo,
      child: TouchSpin(
        min: 0,
        max: 9,
        step: 1,
        value: 1,
        //displayFormat: NumberFormat.currency(locale: 'en_US', symbol: '\$'),
        textStyle: const TextStyle(fontSize: 25),
        iconSize: 20,
        addIcon: const Icon(Icons.add_circle_outline),
        subtractIcon: const Icon(Icons.remove_circle_outline),
        iconActiveColor: MyColors.vermelho,
        iconDisabledColor: Colors.grey,
        onChanged: (val) {
          print(val);
        },
      ),
    );
  }
}

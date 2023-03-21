import 'package:alibababelem/util/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';


class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const MyAppBar(),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 4, 15),
          child: Column(
            children: [
              buildBusca(),
              promocaoBuild(height),
              pratosBuild("Chapas"),
              pratosBuild("Comida Árabe"),
              pratosBuild("Lanches"),
              enderecoBuild(),
            ],
          ),
        ),
      ],
    );
  }

  promocaoBuild(double height) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: MyColors.cardElevation,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      child: SizedBox(
        height: height/2.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 60,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset("assets/pratos/filesultao.jpg",
                      fit: BoxFit.cover),
                  Positioned(
                      top: 120,
                      left: 5,
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.amarelo),
                          child: const Text(
                            "Promoção",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )))
                ],
              ),
            ),
            Expanded(
                flex: 45,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "Combo Filé Sultão + 1 Guaraná de 1 Litro",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "Generoso pedaço de filé ao molho de cebola, coberto com queijo e presunto."
                              " Servido com um delicioso arroz à piamontese, farofa de ovo e batata frita. "
                              "(obs: não fazemos troca do sabor do refrigerante).",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                          maxLines: 3,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 0),
                        child: Text(
                          "R\$ 98,00",
                          style: MyColors.textoPreco,
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  pratosBuild(String cateogoria) {
    return Card(
      elevation: MyColors.cardElevation,
      child: ExpansionTile(
        iconColor: MyColors.vermelho,
        collapsedIconColor: MyColors.vermelho,
        initiallyExpanded: false,
        title: Text(
          cateogoria,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:MyColors.vermelho),
        ),
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildItem(),
                buildItem(),
                buildItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildBusca() {
    return Card(
      elevation: 0,
      child: Row(
        children: [
          Expanded(
            flex: 70,
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search, color: MyColors.vermelho,),
                hintText: 'Buscar Pratos',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: MyColors.vermelho,
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold)),
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list,
                size: 24.0,
              ),
              label: Text('Filtro'),
            ),
          ),
        ],
      ),
    );
  }

  buildItem() {
    return Padding(
      padding: const EdgeInsets.only( left: 0, bottom: 4),
      child: Row(
        children: [
          Expanded(
            flex: 25,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                "assets/pratos/chapa_mista.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 75,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Filé na Chapa",
                    style: MyColors.textoPadrao,
                  ),
                  Text(
                    "O tradicional, filé na chapa. Acompanha arroz yakimeshi, batata frita e salada de legumes na chapa (repolho e cenoura)",
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "R\$61,00",
                      style: MyColors.textoPreco,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.red,),
        ],
      ),
    );
  }

  enderecoBuild() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(flex: 5, child: Icon(Icons.location_on, color: MyColors.vermelho,size: 25,)),
              Expanded(
                flex: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Endereço", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color:MyColors.vermelho),
                          ),
                          const Text(
                            " (Ver mapa)", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),
                          ),

                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top:4),
                        child: Text(
                          "Bernal do Couto, 238. Belém-Pa", style: TextStyle(fontSize: 14),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top:4),
                        child: Text(
                          "(91) 3242-5454", style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 30, child: Card(elevation: 2, child: Image.asset("assets/alibabamap.jpg",fit: BoxFit.cover,height:60,width: 60,)))
            ],
          ),
        ],
      ),
    );

  }
}

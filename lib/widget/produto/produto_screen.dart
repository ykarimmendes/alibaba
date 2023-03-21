import 'package:alibababelem/util/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_touch_spin/flutter_touch_spin.dart';

class ProdutoScreen extends StatefulWidget {
  const ProdutoScreen({Key? key}) : super(key: key);

  @override
  _ProdutoScreenState createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, MediaQuery.of(context).size.height / 4),
        child: Stack(
          children: [
            Image.asset(
              "assets/pratos/chapa_mista.jpg",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
                left: 10,
                top: 30,
                child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Icon(Icons.arrow_back)))
          ],
        ),
      ),
      bottomNavigationBar: buildBotao(),
      body: SingleChildScrollView(
        child: Container(
          color: MyColors.fundo,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                                Row(

                                  children: [
                                    const Text(
                                      "CHAPA MISTA",
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.favorite, color: MyColors.vermelho,),
                                    ),
                                    Icon(Icons.share),
                                  ],
                                ),

                            const Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "O tradicional, filé na chapa. Acompanha arroz yakimeshi, batata frita e salada de legumes na chapa (repolho e cenoura)",
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                  height: 1.25,
                                ),
                              ),
                            ),
                            Text(
                              "R\$78,90",
                              style: MyColors.textoPrecoInterno,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 10, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Adicionais",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          //padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            buildAdicional(),
                            buildAdicional(),
                            buildAdicional(),
                            buildAdicional(),
                            buildAdicional(),
                            buildAdicional(),
                            buildObs(),
                            const Padding(padding: EdgeInsets.all(8))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildBotao() {
    return Row(
      children: [
        Expanded(flex: 30, child: buildContador()),
        Expanded(
          flex: 70,
          child: Material(
            color: MyColors.amarelo,
            child: InkWell(
              onTap: () {
                //print('called on tap');
              },
              child: const SizedBox(
                height: kToolbarHeight,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Adicionar R\$169,00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildAdicional() {
    return ListTile(
      leading: Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          }),
      title: Text('Camarão'),
      subtitle: Text("+ R\$59,00"),
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
      tileColor: Colors.cyan,
    );
  }

  buildContador() {
    return Container(
      height: 56,
      color: MyColors.fundo,
      child: TouchSpin(
        min: 0,
        max: 9,
        step: 1,
        value: 1,
        //displayFormat: NumberFormat.currency(locale: 'en_US', symbol: '\$'),
        textStyle: const TextStyle(fontSize: 25),
        iconSize: 25,
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

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return MyColors.vermelho;
    }
    return MyColors.vermelho;
  }

  buildObs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Observações",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
            height: 80,
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                fillColor: MyColors.fundo,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(1)),
              ),
            ))
      ],
    );
  }
}

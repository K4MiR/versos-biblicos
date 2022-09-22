import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:versos_biblicos/utils/versos_screen.dart';

class Leitura_Screen extends StatefulWidget {
  const Leitura_Screen({Key? key}) : super(key: key);

  @override
  State<Leitura_Screen> createState() => Leitura_ScreenState();
}

class Leitura_ScreenState extends State<Leitura_Screen> {
  get frasegerada => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'Pão Diário',
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image(image: AssetImage('assets/image/biblia.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: SizedBox(
                  height: 260,
                  child: Text(
                    Versiculos.frasegerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                        onPressed: gerarFrase,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        child: Text(
                          "Novo Versículo",
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Clipboard.setData(
                              ClipboardData(text: Versiculos.frasegerada));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                        ),
                        child: Text(
                          'Copiar Texto',
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void gerarFrase() {
    var numeroSorteado = Random().nextInt(Versiculos.Wordpass.length);
    setState(() {
      Versiculos.frasegerada = Versiculos.Wordpass[numeroSorteado];
    });
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({Key? key}) : super(key: key);

  @override
  State<Menu_Screen> createState() => _menu_screenState();
}

class _menu_screenState extends State<Menu_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Image(
                  image: AssetImage('assets/image/leitura.jpg'),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                )
              ],
            ),
            Positioned(
              top: 235,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38.withOpacity(0.5),
                      spreadRadius: 9,
                      blurRadius: 9,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],

                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 80,
                            child: Image(
                                image: AssetImage(
                                  'assets/image/jesus.png',
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: 340,
                            child: Text(
                              textAlign: TextAlign.center,
                              'Deus é o dono de toda sabedoria. Sua sabedoria é maior que a sabedoria humana. '
                                  'A Bíblia está cheia de bons conselhos e ensinamentos, que podem lhe ajudar a agir '
                                  'com mais sabedoria.',
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                              onPressed: ()  {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => const Leitura_Screen()));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orangeAccent,
                                elevation: 10,
                                fixedSize: Size.fromWidth(300),
                              ),
                              child: Text(
                                'LEITURA',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25,
                                ),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orangeAccent,
                                elevation: 10,
                                fixedSize: Size.fromWidth(250),
                              ),
                              child: Text(
                                'VERSÃO',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

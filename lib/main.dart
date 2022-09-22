
import 'package:flutter/material.dart';
import 'package:versos_biblicos/screen/menu_screen.dart';

Future main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        useInheritedMediaQuery: true,
        home: Menu_Screen(),
      );

}


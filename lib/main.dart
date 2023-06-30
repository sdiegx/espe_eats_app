import 'package:espeats/src/Routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ESPEATS',
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold),
          headlineSmall: TextStyle( //Para titulos principales
            color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30.0),
          titleLarge: TextStyle(  //Para subtitulos
              color: Colors.black, fontWeight: FontWeight.bold),
          titleSmall: TextStyle( //Para texto de botones
            color: Colors.white,fontSize: 17.0),
          bodySmall: TextStyle( //Para descripciones de las cards de comida
              color: Color.fromRGBO(163, 155, 155, 1.0),fontWeight: FontWeight.w500,fontSize: 13.0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(Size(350.0,50.0)),
            backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(255, 140, 0, 1.0)),
            shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ))
          )
        ),
        scaffoldBackgroundColor: Colors.white,
        /*appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )*/
      ),
    );
  }
}

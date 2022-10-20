import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_starter/providers/counter_provider.dart';
import 'package:flutter_starter/screens/home_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home:MyHomePage()

    );
  }
}
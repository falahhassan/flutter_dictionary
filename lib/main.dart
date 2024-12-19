import 'package:flutter/material.dart';
import 'package:flutter_dictionary/pages/homepage.dart';
import 'package:flutter_dictionary/pages/homepage_control.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => AppNotify())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
    }
  }
}

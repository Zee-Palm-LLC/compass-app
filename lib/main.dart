import 'package:compass_app/controller/compass_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home_view.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => CompassController(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white.withOpacity(0.1)),
      home: HomeView(),
    );
  }
}

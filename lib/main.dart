import 'package:flutter/material.dart';
import 'package:math_mcq_app/math_home.dart';
import 'package:math_mcq_app/math_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MathProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MathHome(),
      ),
    );
  }
}


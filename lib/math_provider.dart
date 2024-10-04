// ignore_for_file: unused_local_variable, empty_constructor_bodies

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MathProvider extends ChangeNotifier {
  Random random = Random();
  Parser parser = Parser();
  List<String> signs = ["+", "-", "*", "/"]; 
  List<double> results = []; 
  double result = 0;
  String myMath = "";
  bool tap = true;

  MathProvider() {
    calculate();
  }

  void calculate() {
    tap = true;

    // Generate random signs
    int randomIndex1 = random.nextInt(signs.length);
    String randomSign1 = signs[randomIndex1];
    int randomIndex2 = random.nextInt(signs.length);
    String randomSign2 = signs[randomIndex2]; 
    int randomIndex3 = random.nextInt(signs.length);
    String randomSign3 = signs[randomIndex3]; 

    // Generate random numbers
    int randomnumber1 = random.nextInt(1000) + 1;
    int randomnumber2 = random.nextInt(1000) + 1;
    int randomnumber3 = random.nextInt(1000) + 1;
    int randomnumber4 = random.nextInt(1000) + 1;

    
    myMath = "$randomnumber1 $randomSign1 $randomnumber2 $randomSign2 $randomnumber3 $randomSign3 $randomnumber4";
    Expression exp = parser.parse(myMath);

    
    ContextModel contextModel = ContextModel();
    result = exp.evaluate(EvaluationType.REAL, contextModel);

    
    double result2 = result + randomnumber1; 
    double result3 = result - randomnumber2; 
    double result4 = result * randomnumber3; 

    results = [result, result2, result3, result4];
    results.shuffle(random); 
    notifyListeners(); 
  }
}

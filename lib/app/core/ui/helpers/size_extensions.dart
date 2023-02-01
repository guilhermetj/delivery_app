import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext{
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

 //Ex: quero que tal coisa ocupe uma porcentagem da tela 
  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}
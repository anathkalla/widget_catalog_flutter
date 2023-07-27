/* 
	* Defines: TextStyles used in this project
	* Rules: TextStyle name should be same as its corresponding string name defined at global_strings.dart
	* Avoid: Using direct resource definition, import them from their respective files here 
*/

import 'package:flutter/material.dart';
import 'package:wiki_template_app/global/global.dart';

class TextStyleof {
  TextStyleof._();

  static const light = FontWeight.w200;
  static const regular = FontWeight.w400;
  static const bold = FontWeight.w700;

  static const appTitle = TextStyle(
      fontSize: Sizeof.appTitle,
      fontWeight: bold,
      fontFamily: Stringof.brandFont);
}

import 'package:flutter/material.dart';
bool isDarkMode = false;
Color backgroundMode() {
  Color currentColor = isDarkMode ? Colors.black : Colors.white;
  return currentColor;
}
 
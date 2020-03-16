import 'package:flutter/material.dart';

bool isSmallScreen(BuildContext context) {
  return MediaQuery.of(context).size.width <= 600;
}
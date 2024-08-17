import 'package:flutter/material.dart';
import 'package:myapp/screens/create/create.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/theme.dart';

void main() {
  runApp( MaterialApp(
    theme: primaryTheme,
    home: const Create() ,
  ));
}


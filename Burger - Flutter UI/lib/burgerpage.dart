import 'package:flutter/material.dart';

class Burgerpage extends StatefulWidget {
  const Burgerpage({super.key});

  static const tag = "burger_page";

  @override
  State<Burgerpage> createState() => _BurgerpageState();
}

class _BurgerpageState extends State<Burgerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
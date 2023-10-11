import 'package:flutter/material.dart';

class Logado extends StatefulWidget {
  const Logado({super.key});

  @override
  State<Logado> createState() => _LogadoState();
}

class _LogadoState extends State<Logado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Você esta logado"),
        centerTitle: true,
      ),
    );
  }
}

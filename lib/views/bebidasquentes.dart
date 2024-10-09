// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto07/main.dart';
import 'package:projeto07/views/login.dart';

class Bebidasquentes extends StatefulWidget {
  const Bebidasquentes({super.key});

  @override
  State<Bebidasquentes> createState() => _BebidasquentesState();
}

class _BebidasquentesState extends State<Bebidasquentes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bege,
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo_borda.png',
              width: 90,
              height: 90,
            ),
            Text(
              'Café CaJu',
              style: TextStyle(
                fontFamily: 'Arial', //descobrir qual fonte mais combina com o nome e importar depois no yaml
                fontSize: 20,
              ),
              ),
            IconButton(
              icon: Icon(Icons.logout),
              color: Colors.black,
              iconSize: 28,
              onPressed: () => {
                Navigator.push(context,
                 MaterialPageRoute(builder:
                 (context) => Login()
                 ),
                )
              },
            )
          ],
        ),
      ),
      body: Text('bebidas quentes'),
    );
  }
}
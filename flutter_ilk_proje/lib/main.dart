import 'dart:io';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme:
            ThemeData(primaryColor: Colors.green, accentColor: Colors.purple),
        home: Scaffold(
            backgroundColor: Colors.yellow,
            appBar: AppBar(
              title: const Text('Selam'),
            ),
            body: Container(
              //alignment kullandığımızda, içindeki veri kadar değil, parenti kadar yer kaplıyor.
              color: Colors.purple,
              child: Text(
                'Berkay' * 2,
                textAlign: TextAlign.center,
              ),
              constraints: BoxConstraints(minHeight: 100, minWidth: 100),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("Tıklandı");
              },
              child: const Icon(
                Icons.account_circle_rounded,
                color: Colors.blueGrey,
              ),
              backgroundColor: Colors.red,
            )));
  }
}

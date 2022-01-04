import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController _emailController;

  late TextEditingController _passwordController;

  late FocusNode _focusNode;
  int maxLineCount = 1;

  //1 kere oluşturuyoruz ve kullanıyoruz. Bir daha çalışmıyor. Yani 1 kere kullanmalık sabit değerlerimiz varsa, initialize etmemiz gerek.

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: 'berkay.ergun16@gmail.com');
    _passwordController = TextEditingController(text: 'deneme kankam');
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  focusNode: _focusNode,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  autofocus: true,
                  maxLength: 30,
                  maxLines: maxLineCount,
                  controller: _emailController,
                  onChanged: (value) => print(value),
                  onSubmitted: (value) => print("submit " + value),
                  decoration: InputDecoration(
                    labelText: 'Label Text',
                    hintText: 'Email Giriniz',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _passwordController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _emailController.text = 'deneme gmail';
                    _passwordController.text = 'deneme şifre';
                  });
                },
                elevation: 10,
              ),
            ],
          )),
    );
  }
}

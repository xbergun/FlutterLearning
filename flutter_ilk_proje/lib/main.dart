import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      "https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80";

  String _img2 =
      "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme:
            ThemeData(primaryColor: Colors.green, accentColor: Colors.purple),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Selam'),
            ),
            body: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: SorunluContainer,
              ),
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

  List<Widget> get SorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    //expanded kullansaydık bütün alana yayılıyordu.
    //flexible ise, verdiğin değer kadar yer tut. Lazımsa küçül. Daha da büyüme. O yüzden verdiğimiz widthden üzerine çıkmaz.
    return [
      Flexible(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      ),
    ];
  }

  List<Widget> get expandedContainer {
    //expanded yapınca sığdırır ama width heigh değerlerini devredışı bırakır.
    //bir şeyi değiştirmek için flex kullanıyoruz. React native de de vardır 2 birim 1 birim olayı.
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
    ];
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: const Text(
          'Berkay',
          style: TextStyle(fontSize: 128, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: NetworkImage(_img2),
              fit: BoxFit.scaleDown,
            ),
            boxShadow: const [
              BoxShadow(color: Colors.green, offset: Offset(10, 20)),
              BoxShadow(),
            ]),
      ),
    );
  }
}

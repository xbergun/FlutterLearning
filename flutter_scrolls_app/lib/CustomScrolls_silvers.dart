import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsableToolbarExample extends StatelessWidget {
  const CollapsableToolbarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.red.shade900,
          expandedHeight: 200,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Sliver App Bar'),
            centerTitle: false,
            background: Image.asset(
              "assets/images/1.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
              delegate: SliverChildListDelegate(sabitListeElemanlari)),
        ),
        SliverPadding(
          padding: EdgeInsets.all(6),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                  _dinamikElemanUretenFonksiyon,
                  childCount: 6)),
        ),

        //sabit listeli bir silver list view
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari),
            itemExtent: 300),

        //dinamik listeli bir silver list view
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 7),
          itemExtent: 50,
        ),

        //sabit elemanlarla bir satırda kaç eleman olacağını yazdığımız grid türü
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildListDelegate(sabitListeElemanlari),
        ),

        //dinamik builder ile elemanlarla bir satırda kaç eleman olacağını yazdığımız grid türü

        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
        ),
        //dinamik builder ile üretilen elemanlarla bir satırdaki bir elemanın max genişliğini söylediğimiz grid türü
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300),
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 10),
        ),
        SliverGrid.count(
          crossAxisCount: 4,
          children: sabitListeElemanlari,
        )
      ],
    );
  }

  List<Widget> get sabitListeElemanlari {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 1',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 2',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 3',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 4',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 5',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 6',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 6',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 6',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 6',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        'Sabit Liste Elemanı ${index + 1}',
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}

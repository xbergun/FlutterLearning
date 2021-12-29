import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  const GridViewKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: Text(' Dynamic GridView Kullanimi'),
        ),
        body: GridView.builder(
            itemCount: 100,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.green[100 * ((index + 1) % 9)],
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.yellow],
                        begin: Alignment.topCenter)),
                margin: EdgeInsets.all(10),
                child: Text('Hello Flutter $index'),
              );
              
            }),
          
      ),
      onTap: () => debugPrint("Merhaba flutter"),
    );
  }
}

/**
 * GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 4,
        primary: false,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade100,
            child: Text(
              'Merhaba Flutter',
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.red.shade200,
          ),
          Container(
            color: Colors.red.shade300,
          ),
          Container(
            color: Colors.red.shade400,
          ),
          Container(
            color: Colors.red.shade500,
          ),
          Container(
            color: Colors.red.shade600,
          ),
          Container(
            color: Colors.red.shade700,
          ),
          Container(
            color: Colors.red.shade800,
          ),
          Container(
            color: Colors.red.shade900,
          ),
        ],
      ),
 */

/**GridView.extent(
        maxCrossAxisExtent: 200,
        scrollDirection: Axis.vertical,
        primary: false,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade100,
            child: Text(
              'Merhaba Flutter',
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.red.shade200,
          ),
          Container(
            color: Colors.red.shade300,
          ),
          Container(
            color: Colors.red.shade400,
          ),
          Container(
            color: Colors.red.shade500,
          ),
          Container(
            color: Colors.red.shade600,
          ),
          Container(
            color: Colors.red.shade700,
          ),
          Container(
            color: Colors.red.shade800,
          ),
          Container(
            color: Colors.red.shade900,
          ),
        ],
      ), */
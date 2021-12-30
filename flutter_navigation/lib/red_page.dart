import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_navigation/yellow_page.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("On Will Pop Çalıştı");
        _rastgeleSayi = Random().nextInt(100);
        Navigator.pop(context, _rastgeleSayi);
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: Text('Red page'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Page',
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    _rastgeleSayi = Random().nextInt(100);
                    print("Üretilen Sayi $_rastgeleSayi");
                    Navigator.of(context).pop(_rastgeleSayi);
                  },
                  child: Text('Geri dön')),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    print("Evet pop olabilir");
                  } else {
                    print("Hayır Olanaz");
                  }
                },
                child: Text('Can Pop Kullanimi'),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/yellowPage');
                },
                child: Text('Go to yellow Kullanimi'),
                style:
                    ElevatedButton.styleFrom(primary: Colors.yellow.shade600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

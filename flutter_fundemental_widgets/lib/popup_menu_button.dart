import 'package:flutter/material.dart';

class PopupMenuButtonKullanimi extends StatefulWidget {
  PopupMenuButtonKullanimi({Key? key}) : super(key: key);

  @override
  _PopupMenuButtonKullanimiState createState() =>
      _PopupMenuButtonKullanimiState();
}

class _PopupMenuButtonKullanimiState extends State<PopupMenuButtonKullanimi> {
  String _secilenSehir = "";
  List<String> _renkler = ["Mavi", "Yeşil", "Siyah", "Beyaz"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          setState(() {
            print("Secilen sehir: $sehir");
            _secilenSehir = sehir;
          });
        },
        itemBuilder: (BuildContext context) {
          return _renkler
              .map((String e) => PopupMenuItem(
                    child: Text(e),
                    value: e,
                  ))
              .toList();

          // return <PopupMenuEntry<String>>[
          //   // PopupMenuItem(
          //   //   child: Text('Ankara'),
          //   //   value: 'Ankara',
          //   // ),
          //   // PopupMenuItem(
          //   //   child: Text('Bursa'),
          //   //   value: 'Bursa',
          //   // ),
          //   // PopupMenuItem(
          //   //   child: Text('Van'),
          //   //   value: 'Van ',
          //   //),
          // ];
        },
      ),
    );
  }
}

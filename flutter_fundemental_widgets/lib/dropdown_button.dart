import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  _DropDownButtonKullanimiState createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = ['Ankara', "bursa", "İzmir"];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButton<String>(
      hint: Text('Şehir Seçiniz'),
      icon: Icon(Icons.arrow_downward),
      style: TextStyle(color: Colors.red),
      iconSize: 32,
      // items: [
      //   DropdownMenuItem(
      //     child: Text('Ankara Şehri'),
      //     value: 'Ankara',
      //   ),
      //   DropdownMenuItem(
      //     child: Text('İzmir Şehri'),
      //     value: 'İzmir',
      //   ),
      //   DropdownMenuItem(
      //     child: Text('Bursa Şehri'),
      //     value: 'Bursa',
      //   ),
      // ],
      items: _tumSehirler
          .map((String oankiSehir) => DropdownMenuItem(
                child: Text(oankiSehir),
                value: oankiSehir,
              ))
          .toList(),
      value: _secilenSehir,
      onChanged: (String? yeniSecilenSehir) {
        setState(() {
          print("Çalıştı $_secilenSehir");
          _secilenSehir = yeniSecilenSehir;
        });
      },
    ));
  }
}

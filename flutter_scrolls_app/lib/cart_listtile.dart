import 'package:flutter/material.dart';

class CardveListTile extends StatelessWidget {
  const CardveListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve List Tile'),
      ),
      body: Center(
        //bu güzeldir ama performans dostu değildir. 3 4 elemanlı listenizi burada tutun ama yüksek elemanlı listenizi tutmayın. Mesela wp baya akıcıdır. Ama listview veya singlechildscroll kullandığımızda her elemanın yeri bellidir. Mantıken sadece ekrandakiler listelensin. Diğerleri lazım olduğunda listelensin isteriz.
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
              ],
            ),
            Text('Selam'),
            ElevatedButton(onPressed: () {}, child: Text('Button'))
          ],
        ),
      ),
    );
  }

  Widget singleChildKullan() {
    return SingleChildScrollView(
      child: Column(
        children: [
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
        ],
      ),
    );
  }

  Widget TekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade200,
          shadowColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 12,
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('Başlık Kısmı'),
            subtitle: Text('Âlt Başlık'),
            trailing: Icon(Icons.ac_unit_rounded),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 50,
          indent: 60,
          endIndent: 60,
        ),
      ],
    );
  }
}

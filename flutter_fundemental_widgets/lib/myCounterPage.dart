import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key}) : super(key: key);

  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
    int sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("MyhomePage Build Metodu Çalıştı");

    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextWidget(),
            Text(
              sayac.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
            FloatingActionButton(
              onPressed: azalt,
              child: Icon(Icons.signal_cellular_no_sim),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("buton Metodu Çalıştı ve sayac degeri $sayac");
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
  void sayaciArttir() {
    setState(() {
      sayac++;
    });
  }

  azalt() {
    setState(() {
      sayac--;
    });
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Butona basilma Miktari',
      style: TextStyle(fontSize: 36),
    );
  }
}

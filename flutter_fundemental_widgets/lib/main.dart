import 'package:flutter/material.dart';

//hot reload da sadece widgetler çalışır. Hot restartta ise baştan çalışır.

void main() {
  debugPrint("Main Metodu Çalıştı");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp Build Metodu Çalıştı");

    return MaterialApp(
      //uygulamanın ilk açılış sayfası home,
      home: MyHomePage(),
      title: 'My Counter App',
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sayac = 0;

  //build mutlaka yazılması gerekiyor. vE BİZE buildcontext parametresi ile beraber gelir. Bu şu işe yarar, builde koyduğumuz widgetler ekrana direkt çiziliyor. Ve bu değerler hiçbir şekilde değişmiyor. Statelesswidget, kodlar aşağıya doğru okunurken gelir buildi okur scaffould koyar appbarı koyar ve geçer. Ekrandaki veri değişmicekse biz stateless kullanırız.
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
    return Text(
      'Butona basilma Miktari',
      style: TextStyle(fontSize: 36),
    );
  }
}

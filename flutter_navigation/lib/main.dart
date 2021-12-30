import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/green_page.dart';
import 'package:flutter_navigation/red_page.dart';
import 'package:flutter_navigation/route_generator.dart';
import 'package:flutter_navigation/yellow_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: Dashboard(),
      /* routes: {
        '/redPage': (context) => RedPage(),
         '/':  (context) =>  Dashboard(),
        //kök dizini vermişsek, aslında home nin yerine geçiyor. Ondan dolayı ikisini aynı anda kullanamayız.
        '/greenPage': (context) => GreenPage(),
        '/yellowPage': (context) => YellowPage(),
      }, */
      //named routelerde, ilk routes e bakar, orda yoksa ongenerate bakar, burda da yoksa unknown a bakar.
      //burada istediğimiz her şeyi kullanabiliriz.
      onGenerateRoute: RouteGenerator.routeGenerator,

      //yeni bir rootaya gidilmek istendiğinde, bunlara bak, yoksa, unknownrouteyi çalıştır.
/*       onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text('Error'),
                ),
                body: Center(
                  child: Text('404'),
                ),
              )), */
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (redContext) => RedPage()))
                    .then((value) => print("value $value"));
              },
              child: Text('Kırmızı sayfaya gir IOS'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
            ElevatedButton(
              onPressed: () async {
                int? _gelensayi = await Navigator.push<int>(context,
                    CupertinoPageRoute(builder: (redContext) => RedPage()));
                print("Anasayfadaki sayı $_gelensayi");
              },
              child: Text('Kırmızı sayfaya gir Androis'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text('Maybe Pop Kullanimi'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            ),
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
              //direkt uygulamadan çıkar.
              //ne gibi durumlarda kullanılır ? mesela kullanıcı login oldu anasayfaya yönlendirdik. Ancak geriye bastığında tekrar login ekranına gitmemesi lazım. Uygulamadan çıkması lazım.
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => GreenPage()));
              },
              child: Text('Push Replacament Kullanimi'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.of(context).pushNamed(routeName);
                Navigator.pushNamed(context, "/yellowPage");
              },
              child: Text('PushNamed Kullanimi'),
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/ogrenciListesi', arguments:60 );
              },
              child: Text('Liste Oluştur'),
              style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
            ),
          ],
        ),
      ),
    );
  }
}

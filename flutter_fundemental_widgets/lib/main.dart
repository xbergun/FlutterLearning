import 'package:flutter/material.dart';
import 'package:flutter_fundemental_widgets/popup_menu_button.dart';
import 'dropdown_button.dart';

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
      title: 'My Counter App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          backgroundColor: Colors.black,
        )),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Buton Ornekleri'),
        ),
        body: PopupMenuButtonKullanimi(),
      ),
    );
  }
}

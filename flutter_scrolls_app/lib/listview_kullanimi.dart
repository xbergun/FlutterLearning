import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

//Ogrencileri tutan bir liste oluşturduk. Sonra ise map ile listtile yazdırdık.

  List<Student> tumOgrenciler = List.generate(
      500,
      (index) => Student(index + 1, 'Student Name ${index + 1}',
          'Student Surname ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          var oankiOgrenci = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0 ? Colors.orange : Colors.white38,
            child: ListTile(
              onTap: () => {
                print("Tap: $index"),
                if (index % 2 == 1)
                  {
                    EasyLoading.showToast('Tap in even number',
                        duration: Duration(seconds: 3),
                        dismissOnTap: true,
                        toastPosition: EasyLoadingToastPosition.bottom),
                    EasyLoading.instance.backgroundColor = Colors.green
                  }
                else
                  {
                    EasyLoading.showToast('Tap in odd number',
                        duration: Duration(seconds: 3),
                        dismissOnTap: true,
                        toastPosition: EasyLoadingToastPosition.bottom),
                    EasyLoading.instance.backgroundColor = Colors.red
                  }
              },
              onLongPress: () {
                _alertDialogIslemleri(context, oankiOgrenci);
              },
              title: Text(oankiOgrenci.name),
              subtitle: Text(oankiOgrenci.surname),
              leading: CircleAvatar(
                child: Text(oankiOgrenci.id.toString()),
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, index) {
          var yeniIndex = index + 1;
          if (yeniIndex % 4 == 0) {
            return Divider(
              thickness: 2,
              color: Colors.yellow,
            );
          }
          return SizedBox();
        },
      ),
    );
  }

  Widget klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Student ogr) => ListTile(
                title: Text(ogr.name),
                subtitle: Text(ogr.surname),
                leading: CircleAvatar(
                  child: Text('ogr.id'),
                ),
              ))
          .toList(),
    );
  }
}

void _alertDialogIslemleri(BuildContext myContext, Student secilen) {
  //builder, ekrana bir widget çağırmak için kullanılan callback funkction
  showDialog(
      context: myContext,
      builder: (context) {
        return AlertDialog(
          actions: [
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    AlertDialog(
                      backgroundColor: Colors.amber,
                    );
                  },
                  child: Text('Kapat'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Tamam'),
                )
              ],
            )
          ],
          title: Text(secilen.toString()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Berkay' * 100),
                Text('Berkay2' * 100),
                Text('Berkay3' * 100),
                Text('Berkay4' * 100),
              ],
            ),
          ),
        );
      });
}
//instance of student gördüğümüzde, sistem bunu nasıl stringe dönüştüreceğini bilmiyor. Ama biz istiyorsak override toString yapmalıyız.

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
  @override
  String toString() {
    // TODO: implement toString
    return 'Name : $name Surname $surname id: $id';
  }
}

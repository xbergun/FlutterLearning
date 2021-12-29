import 'package:flutter/material.dart';

class ListViewLayoutProblems extends StatelessWidget {
  const ListViewLayoutProblems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Layout Problems'),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Text("Başladı"),
            Expanded(
              child: ListView(
                reverse: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade500,
                  ),
                ],
              ),
            ),
            Text("Bitti"),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.red),
        ),
      ),
    );
  }

  Widget columnicindeListe() {
    return Column(
      children: [
        Text('Başladı'),
        Expanded(
          child: ListView(
            //shrinkWrap: true,
            //normalde listview full yer kaplar. Ancak shrinkwrap verdiğimizde childrenler kadar yer kaplar. false yaptığımızda parenti kadar yer kaplıyor.
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade500,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade600,
              ),
            ],
          ),
        ),
        Text('Bitti'),
      ],
    );
  }
}

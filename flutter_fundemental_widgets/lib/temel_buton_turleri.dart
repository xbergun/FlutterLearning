import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint('Uzun basidli');
          },
          child: Text('TextButton'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.red;
            }
            if (states.contains(MaterialState.hovered)) {
              return Colors.orange;
            }
            return null;
          })),
          icon: Icon(Icons.add),
          label: Text('State Button'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Elevated Button'),
          style: ElevatedButton.styleFrom(
              primary: Colors.red, onPrimary: Colors.yellow),
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Text Button')),
        OutlinedButton(
          onPressed: () {},
          child: Text('Outline Button'),
          style: OutlinedButton.styleFrom(
            shape:
                StadiumBorder(side: BorderSide(color: Colors.pink, width: 2)),
          ),
        ),
      ],
    );
  }
}

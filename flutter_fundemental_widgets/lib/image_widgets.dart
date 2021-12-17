import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        'https://www.topgear.com/sites/default/files/cars-car/image/2021/07/rimacnevera-26_0.jpg';
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: Image.asset(
                        'assets/images/car.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                      child: Image.network(
                    _imgURL,
                    fit: BoxFit.cover,
                  )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red,
                      child: CircleAvatar(
                        child: Text(
                          'E',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.red,
                        backgroundImage: NetworkImage(_imgURL),
                      )),
                ),
              ],
            ),
          ),
          //internetten resim çektiğimizde, o resim yüklenene kadar başka resim gösterir.
          FadeInImage.assetNetwork(placeholder: '', image: _imgURL),
          Container(child: Placeholder()),
        ],
      ),
    );
  }
}

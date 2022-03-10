import 'package:casino_plus/src/components/url_image.dart';
import 'package:flutter/material.dart';
import 'package:casino_plus/casino_plus.dart';

void main() {
  final app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UrlImage.localMode = true;
    const myCard = PlayingCard.spade1;
    debugPrint('${myCard.suit}');
    debugPrint('${myCard.number}');
    const myImage = PlayingCardImage(myCard);
    const center = Center(child: myImage);
    const scaffold = Scaffold(body: center);
    const app = MaterialApp(home: scaffold);
    return app;
  }
}

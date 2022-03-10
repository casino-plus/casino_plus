# Casino+

![casino-plus-header](https://github.com/casino-plus/casino_plus/blob/main/resources/images/casino-plus-header.png)

## Let's add Casino games into your application.

package is here.  
https://pub.dev/packages/casino_plus

# Prepare

install

```pubspec.yaml
dependencies:
  flutter:
    sdk: flutter
  casino_plus: // add here
```

import

```
import 'package:casino_plus/casino_plus.dart';
```

# Use

the suits of playing cards are defined as an enum

```
enum Suit {
  spade, // ♠︎
  heart, // ♥
  diamond, // ♦
  club, // ♣
}
```

the numbers(ranks, pips) of playing cards are defined as an enum

```
enum Number {
  num1, // A
  num2, // 2
  ...
  num11, // J
  num12, // Q
  num13, // K
}
```

playing cards are also difined as an enum

```
enum PlayingCard {
  spade1, // ♠︎A
  spade2, // ♠︎2
  spade3, // ♠︎3
  ...
  club13, // ♣K
}
```

can get suit and number from a playing cards

```
// ♥5
var x = PlayingCard.heart5;
// ♥
print(x.suit);
// 5
print(x.number);
```

deck is a list of playing card

```
// [ ♠︎A, ♠︎2, ♠︎3 ... ♣K ]
List<PlayingCard> deck = newDeck();
```

can show a playing card as a widget

```
// ♦8
var d8 = PlayingCard.diamond8;
// Widget
var widget = PlayingCardImage(d8);
```

# Message

<br>

Hello, This is Casino+ Staff.
Thunks for reading this page. 😃

<br>

- Contributions are welcomed! 🎉
- Please contact me by twitter 🐥

<br>

Main developer's twitter account

- @Rubydog725
  https://twitter.com/Rubydog725


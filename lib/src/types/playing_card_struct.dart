//
//
//

import 'package:casino_plus/src/types/number.dart';
import 'package:casino_plus/src/types/playing_card.dart';
import 'package:casino_plus/src/types/suit.dart';

class PlayingCardStruct {
  final PlayingCard id;
  final Number number;
  final Suit suit;

  PlayingCardStruct({
    required this.id,
    required this.number,
    required this.suit,
  });
}

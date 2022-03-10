//
//
//

import 'package:casino_plus/src/config/cards.dart';
import 'package:casino_plus/src/types/number.dart';
import 'package:casino_plus/src/types/playing_card_struct.dart';
import 'package:casino_plus/src/types/suit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

/// Playing Cards
enum PlayingCard {
  back,
  spade1,
  spade2,
  spade3,
  spade4,
  spade5,
  spade6,
  spade7,
  spade8,
  spade9,
  spade10,
  spade11,
  spade12,
  spade13,
  heart1,
  heart2,
  heart3,
  heart4,
  heart5,
  heart6,
  heart7,
  heart8,
  heart9,
  heart10,
  heart11,
  heart12,
  heart13,
  diamond1,
  diamond2,
  diamond3,
  diamond4,
  diamond5,
  diamond6,
  diamond7,
  diamond8,
  diamond9,
  diamond10,
  diamond11,
  diamond12,
  diamond13,
  club1,
  club2,
  club3,
  club4,
  club5,
  club6,
  club7,
  club8,
  club9,
  club10,
  club11,
  club12,
  club13,
  blackJocker,
  whiteJocker,
}

/// Helper for Playing Card
extension PlayingCardX on PlayingCard {
  static final rawValues = {
    PlayingCard.back: 100,
    PlayingCard.spade1: 101,
    PlayingCard.spade2: 102,
    PlayingCard.spade3: 103,
    PlayingCard.spade4: 104,
    PlayingCard.spade5: 105,
    PlayingCard.spade6: 106,
    PlayingCard.spade7: 107,
    PlayingCard.spade8: 108,
    PlayingCard.spade9: 109,
    PlayingCard.spade10: 110,
    PlayingCard.spade11: 111,
    PlayingCard.spade12: 112,
    PlayingCard.spade13: 113,
    PlayingCard.heart1: 201,
    PlayingCard.heart2: 202,
    PlayingCard.heart3: 203,
    PlayingCard.heart4: 204,
    PlayingCard.heart5: 205,
    PlayingCard.heart6: 206,
    PlayingCard.heart7: 207,
    PlayingCard.heart8: 208,
    PlayingCard.heart9: 209,
    PlayingCard.heart10: 210,
    PlayingCard.heart11: 211,
    PlayingCard.heart12: 212,
    PlayingCard.heart13: 213,
    PlayingCard.diamond1: 301,
    PlayingCard.diamond2: 302,
    PlayingCard.diamond3: 303,
    PlayingCard.diamond4: 304,
    PlayingCard.diamond5: 305,
    PlayingCard.diamond6: 306,
    PlayingCard.diamond7: 307,
    PlayingCard.diamond8: 308,
    PlayingCard.diamond9: 309,
    PlayingCard.diamond10: 310,
    PlayingCard.diamond11: 311,
    PlayingCard.diamond12: 312,
    PlayingCard.diamond13: 313,
    PlayingCard.club1: 401,
    PlayingCard.club2: 402,
    PlayingCard.club3: 403,
    PlayingCard.club4: 404,
    PlayingCard.club5: 405,
    PlayingCard.club6: 406,
    PlayingCard.club7: 407,
    PlayingCard.club8: 408,
    PlayingCard.club9: 409,
    PlayingCard.club10: 410,
    PlayingCard.club11: 411,
    PlayingCard.club12: 412,
    PlayingCard.club13: 413,
    PlayingCard.blackJocker: 998,
    PlayingCard.whiteJocker: 999,
  };

  PlayingCardStruct _cardStruct() => cards.firstWhere((c) => c.id == this);

  /// Card's raw enum value
  int get rawValue => rawValues[this]!;

  /// Card's suit
  Suit get suit => _cardStruct().suit;

  /// Card's number
  Number get number => _cardStruct().number;

  /// Create Playing Card from int value
  static PlayingCard? from(int rawValue) {
    final member =
        rawValues.keys.firstWhereOrNull((key) => rawValues[key] == rawValue);
    return member;
  }

  /// Create Playing Card from Suit and Number
  static PlayingCard? fromSuitAndNumber(Suit suit, Number number) {
    final member = cards
        .firstWhereOrNull((c) => ((c.suit == suit) && (c.number == number)));
    return member?.id;
  }
}

class PlayingCardConverter implements JsonConverter<PlayingCard?, int?> {
  const PlayingCardConverter();
  @override
  PlayingCard? fromJson(int? rawValue) => PlayingCardX.from(rawValue ?? -1);

  @override
  int? toJson(PlayingCard? member) => member?.rawValue;
}

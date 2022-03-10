//
//
//

/// Playing Card Suits
enum Suit {
  back,
  spade,
  heart,
  diamond,
  club,
  joker,
}

/// Suit Extension
extension SuitX on Suit {
  static final rawValues = {
    Suit.back: 0,
    Suit.spade: 1,
    Suit.heart: 2,
    Suit.diamond: 3,
    Suit.club: 4,
    Suit.joker: 99,
  };
  int get rawValue => rawValues[this]!;

  static Suit? from(int rawValue) {
    final member =
        rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
    return member;
  }
}

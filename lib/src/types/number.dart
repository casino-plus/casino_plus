//
//
//

/// Playing Card Numbers
enum Number {
  back,
  num1,
  num2,
  num3,
  num4,
  num5,
  num6,
  num7,
  num8,
  num9,
  num10,
  num11,
  num12,
  num13,
  joker,
}

extension NumberX on Number {
  static final rawValues = {
    Number.back: 0,
    Number.num1: 1,
    Number.num2: 2,
    Number.num3: 3,
    Number.num4: 4,
    Number.num5: 5,
    Number.num6: 6,
    Number.num7: 7,
    Number.num8: 8,
    Number.num9: 9,
    Number.num10: 10,
    Number.num11: 11,
    Number.num12: 12,
    Number.num13: 13,
    Number.joker: 99,
  };
  int get rawValue => rawValues[this]!;

  static Number? from(int rawValue) {
    final member =
        rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
    return member;
  }
}

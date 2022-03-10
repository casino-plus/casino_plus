//
//
//

/// Game ID
enum GameId {
  /// Cake Poker
  cakepoker,

  /// Coming soon
  commingSoon,
}

/// Extensions for Game ID
extension GameIdExt on GameId {
  static final rawValues = {
    GameId.cakepoker: 1,
    GameId.commingSoon: 999,
  };
  int get rawValue => rawValues[this]!;

  static GameId? from(int rawValue) {
    final member =
        rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
    return member;
  }
}

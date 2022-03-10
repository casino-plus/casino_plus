//
//
//

import 'package:casino_plus/casino_plus.dart';

class Game {
  final GameId id;
  final String title;
  final String imageUrl;
  final int playCost;
  final int minPlayerCount;
  final int maxPlayerCount;

  Game({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.playCost,
    required this.minPlayerCount,
    required this.maxPlayerCount,
  });
}

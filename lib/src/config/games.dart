import 'package:casino_plus/casino_plus.dart';
import 'package:casino_plus/src/config/image_names.dart';

final List<Game> games = [
  Game(
    id: GameId.cakepoker,
    title: 'ケーキポーカー',
    imageUrl: 'assets://' + ImageNames.gamePartycake,
    playCost: 20,
    minPlayerCount: 4,
    maxPlayerCount: 4,
  ),
  Game(
    id: GameId.commingSoon,
    title: 'Coming soon...',
    imageUrl: 'assets://' + ImageNames.gamePartycake,
    playCost: 20,
    minPlayerCount: 4,
    maxPlayerCount: 4,
  ),
];

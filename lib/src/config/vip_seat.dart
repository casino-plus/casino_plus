// TODO: - Pages 側で myUserIdを見て判断するようにする
import 'package:casino_plus/casino_plus.dart';

int vipSeat(GameId gameId) {
  switch (gameId) {
    case GameId.cakepoker:
      return 3;
    case GameId.commingSoon:
      return 1;
  }
}

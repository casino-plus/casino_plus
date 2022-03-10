import 'package:casino_plus/casino_plus.dart';
import 'package:casino_plus/src/components/url_image.dart';
import 'package:casino_plus/src/config/image_names.dart';
import 'package:flutter/material.dart';

/// Game Logo Image
class GameImage extends StatelessWidget {
  /// Game ID
  final GameId gameId;

  /// pass Game ID
  const GameImage(this.gameId);
  @override
  Widget build(BuildContext context) {
    final imageName = _imageName(gameId);
    return UrlImage.assetsName(imageName);
  }
}

String _imageName(GameId id) {
  switch (id) {
    case GameId.cakepoker:
      return ImageNames.gamePartycake;
    case GameId.commingSoon:
      return ImageNames.gamePartycake;
  }
}

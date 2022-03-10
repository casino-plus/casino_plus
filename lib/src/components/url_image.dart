import 'package:flutter/material.dart';

/*
  # サーバーから送られてくる画像URLは ローカルの画像 を指定している時もある

  - オンラインを参照 https://sample.png
  - アプリ内フォルダを参照 assets://sample.png
  - フラッターの組み込みアイコンを参照 fluttericons://12345
*/

class ImageUrl {
  /// URLが指す場所の種類
  ImageScheme scheme;

  /// Flutterで利用しやすい状態になった画像のパス 'https://...' 'assets/images/...'
  String path;

  // 不可視のコンストラクタ
  ImageUrl._(this.scheme, this.path);

  // 公開用のコンストラクタ
  factory ImageUrl.assets(String imageName) {
    return ImageUrl('assets://' + imageName);
  }

  // 公開用のコンストラクタ
  factory ImageUrl(String imageUrl) {
    final components = imageUrl.split('://');
    final schemeString = components.first;
    ImageScheme? scheme;
    String? path;
    switch (schemeString) {
      case 'assets':
        scheme = ImageScheme.assets;
        path = 'assets/images/' + components.last;
        break;
      case 'http':
        scheme = ImageScheme.network;
        path = imageUrl;
        break;
      case 'https':
        scheme = ImageScheme.network;
        path = imageUrl;
        break;
      case 'fluttericons':
        scheme = ImageScheme.flutterIcons;
        path = components.last;
        break;
      default:
        return throw Exception('不正な画像指定です' + imageUrl);
    }
    return ImageUrl._(scheme, path);
  }
}

/// URLが指す場所の種類
enum ImageScheme {
  assets,
  network,
  flutterIcons,
}

/// URLから画像を表示する
class UrlImage extends StatelessWidget {
  // パッケージのテスト表示モード
  static var localMode = false;
  final ImageUrl imageUrl;

  const UrlImage(this.imageUrl);
  factory UrlImage.stringUrl(String url) {
    return UrlImage(ImageUrl(url));
  }
  factory UrlImage.assetsName(String name) {
    return UrlImage(ImageUrl.assets(name));
  }

  @override
  Widget build(BuildContext context) {
    return image();
  }

  Widget image() {
    switch (imageUrl.scheme) {
      case ImageScheme.assets:
        return Image.asset(
          imageUrl.path,
          fit: BoxFit.contain,
          package: localMode ? null : 'casino_plus',
        );
      case ImageScheme.network:
        return Image.network(
          imageUrl.path,
          errorBuilder: (context, exception, stackTrace) {
            // エラー画像
            return Image.asset(
              'no-image.png',
              fit: BoxFit.contain,
              package: localMode ? null : 'casino_plus',
            );
          },
        );
      case ImageScheme.flutterIcons:
        final codePoint = int.parse(imageUrl.path);
        final iconData = IconData(codePoint);
        final icon = Icon(iconData);
        return icon;
    }
  }
}

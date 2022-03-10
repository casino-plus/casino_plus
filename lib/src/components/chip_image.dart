import 'package:casino_plus/src/components/url_image.dart';
import 'package:casino_plus/src/config/image_names.dart';
import 'package:flutter/material.dart';

/// Chip's Image
class ChipImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UrlImage.assetsName(ImageNames.chip);
  }
}

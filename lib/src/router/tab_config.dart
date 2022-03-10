//
//
//

import 'package:casino_plus/src/router/page_id.dart';
import 'package:flutter/material.dart';

class TabConfig {
  final List<PageId> pageList;
  final Color backColor;
  final Color frontColorOnSelected;
  final Color frontColorOnUnselected;
  final Map<PageId, String> imageUrls;
  final Map<PageId, String> labeltexts;

  const TabConfig({
    required this.pageList,
    required this.backColor,
    required this.frontColorOnSelected,
    required this.frontColorOnUnselected,
    required this.imageUrls,
    required this.labeltexts,
  });
}

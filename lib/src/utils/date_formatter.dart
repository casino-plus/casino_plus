import 'package:intl/intl.dart';

extension DateFormatter on DateTime {
  String format(String format) {
    return DateFormat(format).format(this);
  }

  String snsFormat({
    bool showSec = true,
    String? secAgo = '秒前',
    bool showMinutes = true,
    String? minutesAgo = '分前',
    String? hoursAgo = '時間前',
    String? yesterday = '昨日',
    String baseFormat = 'yyyy/MM/dd',
  }) {
    final Duration difference = DateTime.now().difference(this);
    final int diffSec = difference.inSeconds;

    if (diffSec < 60) {
      if (secAgo != null) {
        if (showSec) {
          return '$diffSec' + secAgo;
        } else {
          return secAgo;
        }
      }
    } else if (diffSec < 60 * 60) {
      if (minutesAgo != null) {
        if (showMinutes) {
          return difference.inMinutes.toString() + minutesAgo;
        } else {
          return minutesAgo;
        }
      }
    } else if (diffSec < 60 * 60 * 24) {
      if (hoursAgo != null) {
        return difference.inHours.toString() + hoursAgo;
      }
    } else if (diffSec < 60 * 60 * 24 * 2) {
      if (yesterday != null) {
        return yesterday;
      }
    }

    return format(baseFormat);
  }
}

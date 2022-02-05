//
//
//

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum UserType {
  human,
  bot,
}

extension UserTypeExt on UserType {
  static final rawValues = {
    UserType.human: 0,
    UserType.bot: 1,
  };

  int get rawValue => rawValues[this]!;

  static UserType? from(int rawValue) {
    final member =
        rawValues.keys.firstWhereOrNull((key) => rawValues[key] == rawValue);
    return member;
  }
}

class UserTypeConverter implements JsonConverter<UserType?, int?> {
  const UserTypeConverter();
  @override
  UserType? fromJson(int? rawValue) => UserTypeExt.from(rawValue ?? -1);

  @override
  int? toJson(UserType? member) => member?.rawValue;
}

//
//
//

import 'package:casino_plus/src/types/user_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'player.freezed.dart';
part 'player.g.dart';

/// player
@freezed
class Player with _$Player {
  const Player._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Player({
    required int seat,
    required String userId,
    required String nickname,
    required String iconUrl,
    required UserType userType,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      seat: json['seat'] as int,
      userId: json['user_id'] as String,
      nickname: json['nickname'] as String,
      iconUrl: json['icon_url'] as String,
      userType: $enumDecode(_$UserTypeEnumMap, json['user_type']),
    );

Map<String, dynamic> _$$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'seat': instance.seat,
      'user_id': instance.userId,
      'nickname': instance.nickname,
      'icon_url': instance.iconUrl,
      'user_type': _$UserTypeEnumMap[instance.userType],
    };

const _$UserTypeEnumMap = {
  UserType.human: 'human',
  UserType.bot: 'bot',
};

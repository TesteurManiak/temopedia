// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Details _$$_DetailsFromJson(Map<String, dynamic> json) => _$_Details(
      height: json['height'] == null
          ? const Height()
          : Height.fromJson(json['height'] as Map<String, dynamic>),
      weight: json['weight'] == null
          ? const Weight()
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailsToJson(_$_Details instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
    };

_$_Height _$$_HeightFromJson(Map<String, dynamic> json) => _$_Height(
      cm: json['cm'] as int? ?? 0,
      inches: json['inches'] as int? ?? 0,
    );

Map<String, dynamic> _$$_HeightToJson(_$_Height instance) => <String, dynamic>{
      'cm': instance.cm,
      'inches': instance.inches,
    };

_$_Weight _$$_WeightFromJson(Map<String, dynamic> json) => _$_Weight(
      kg: json['kg'] as int? ?? 0,
      lbs: json['lbs'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WeightToJson(_$_Weight instance) => <String, dynamic>{
      'kg': instance.kg,
      'lbs': instance.lbs,
    };

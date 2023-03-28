import 'package:freezed_annotation/freezed_annotation.dart';

enum Type {
  @JsonValue('Neutral')
  neutral,
  @JsonValue('Fire')
  fire,
  @JsonValue('Water')
  water,
  @JsonValue('Nature')
  nature,
  @JsonValue('Electric')
  electric,
  @JsonValue('Earth')
  earth,
  @JsonValue('Mental')
  mental,
  @JsonValue('Wind')
  wind,
  @JsonValue('Digital')
  digital,
  @JsonValue('Melee')
  melee,
  @JsonValue('Crystal')
  crystal,
  @JsonValue('Toxic')
  toxic,
  @JsonValue('Unknown')
  unknown;
}

class TypeListConverter implements JsonConverter<List<Type>, List> {
  const TypeListConverter();

  @override
  List<Type> fromJson(List json) {
    return json
        .map(
          (e) => Type.values.firstWhere(
            (elem) => elem.name == e.toString().toLowerCase(),
            orElse: () => Type.unknown,
          ),
        )
        .toList();
  }

  @override
  List<String> toJson(List<Type> _) {
    throw UnimplementedError();
  }
}

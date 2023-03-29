// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TemTypeAdapter extends TypeAdapter<TemType> {
  @override
  final int typeId = 2;

  @override
  TemType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TemType.neutral;
      case 1:
        return TemType.fire;
      case 2:
        return TemType.water;
      case 3:
        return TemType.nature;
      case 4:
        return TemType.electric;
      case 5:
        return TemType.earth;
      case 6:
        return TemType.mental;
      case 7:
        return TemType.wind;
      case 8:
        return TemType.digital;
      case 9:
        return TemType.melee;
      case 10:
        return TemType.crystal;
      case 11:
        return TemType.toxic;
      case 12:
        return TemType.unknown;
      default:
        return TemType.neutral;
    }
  }

  @override
  void write(BinaryWriter writer, TemType obj) {
    switch (obj) {
      case TemType.neutral:
        writer.writeByte(0);
        break;
      case TemType.fire:
        writer.writeByte(1);
        break;
      case TemType.water:
        writer.writeByte(2);
        break;
      case TemType.nature:
        writer.writeByte(3);
        break;
      case TemType.electric:
        writer.writeByte(4);
        break;
      case TemType.earth:
        writer.writeByte(5);
        break;
      case TemType.mental:
        writer.writeByte(6);
        break;
      case TemType.wind:
        writer.writeByte(7);
        break;
      case TemType.digital:
        writer.writeByte(8);
        break;
      case TemType.melee:
        writer.writeByte(9);
        break;
      case TemType.crystal:
        writer.writeByte(10);
        break;
      case TemType.toxic:
        writer.writeByte(11);
        break;
      case TemType.unknown:
        writer.writeByte(12);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TemTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oneDayData.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class oneDayDataAdapter extends TypeAdapter<oneDayData> {
  @override
  final int typeId = 0;

  @override
  oneDayData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return oneDayData(
      (fields[0] as Map).map((dynamic k, dynamic v) =>
          MapEntry(k as DateTime, (v as List).cast<Location>())),
    );
  }

  @override
  void write(BinaryWriter writer, oneDayData obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.oneDay);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is oneDayDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

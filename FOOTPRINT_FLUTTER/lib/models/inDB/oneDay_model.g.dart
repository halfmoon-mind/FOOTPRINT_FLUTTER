// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oneDay_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class oneDayModelAdapter extends TypeAdapter<oneDayModel> {
  @override
  final int typeId = 1;

  @override
  oneDayModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return oneDayModel(
      (fields[0] as List).cast<LocationModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, oneDayModel obj) {
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
      other is oneDayModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Driver {
  num? id;
  String driverName;
  String? driverPhone;
  String? driverAddress;
  Driver({
    this.id,
    required this.driverName,
    this.driverPhone,
    this.driverAddress,
  });

  Driver copyWith({
    num? id,
    String? driverName,
    String? driverPhone,
    String? driverAddress,
  }) {
    return Driver(
      id: id ?? this.id,
      driverName: driverName ?? this.driverName,
      driverPhone: driverPhone ?? this.driverPhone,
      driverAddress: driverAddress ?? this.driverAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'driver_name': driverName,
      'driver_phone': driverPhone,
      'driver_address': driverAddress,
    };
  }

  factory Driver.fromMap(Map<String, dynamic> map) {
    return Driver(
      id: map['id'] != null ? map['id'] as num : null,
      driverName: map['driver_name'] as String,
      driverPhone: map['driver_phone'] != null ? map['driver_phone'] as String : null,
      driverAddress: map['driver_address'] != null ? map['driver_address'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Driver.fromJson(String source) => Driver.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Driver(id: $id, driverName: $driverName, driverPhone: $driverPhone, driverAddress: $driverAddress)';
  }

  @override
  bool operator ==(covariant Driver other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.driverName == driverName &&
      other.driverPhone == driverPhone &&
      other.driverAddress == driverAddress;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      driverName.hashCode ^
      driverPhone.hashCode ^
      driverAddress.hashCode;
  }
}

import 'dart:convert';

import 'driver_model.dart';

class DriverList {
  List<Driver> drivers;
  DriverList({
    required this.drivers,
  });

  DriverList copyWith({
    List<Driver>? drivers,
  }) {
    return DriverList(
      drivers: drivers ?? this.drivers,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': drivers.map((x) => x.toMap()).toList(),
    };
  }

  factory DriverList.fromMap(List map) {
    return DriverList(
      drivers: List.generate(
        map.length,
        (index) => Driver.fromMap(map[index]),
      ),
    );
  }

  String toJson() => json.encode(toMap());


  @override
  String toString() => 'DriverList(drivers: $drivers)';
}

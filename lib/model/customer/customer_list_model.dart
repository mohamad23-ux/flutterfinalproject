import 'dart:convert';

import 'customer_model.dart';

class CustomerList {
  List<Customer> catomers;
  CustomerList({
    required this.catomers,
  });

  CustomerList copyWith({
    List<Customer>? catomers,
  }) {
    return CustomerList(
      catomers: catomers ?? this.catomers,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': catomers.map((x) => x.toMap()).toList(),
    };
  }

  factory CustomerList.fromMap(List map) {
    return CustomerList(
      catomers: List.generate(
        map.length,
        (index) => Customer.fromMap(map[index]),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  // factory CustomerList.fromJson(String source) =>
  //     CustomerList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CustomerList(categories: $catomers)';
}

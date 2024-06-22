// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Customer {
  num? id;
  String customerName;
  String? customerArea;
  num? customerPhone;
  String? note;
  Customer({
    this.id,
    required this.customerName,
    this.customerArea,
    this.customerPhone,
    this.note,
  });
  

  

  Customer copyWith({
    num? id,
    String? customerName,
    String? customerArea,
    num? customerPhone,
    String? note,
  }) {
    return Customer(
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      customerArea: customerArea ?? this.customerArea,
      customerPhone: customerPhone ?? this.customerPhone,
      note: note ?? this.note,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer_name': customerName,
      'customer_area': customerArea,
      'customer_phone': customerPhone,
      'note': note,
    };
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      id: map['id'] != null ? map['id'] as num : null,
      customerName: map['customer_name'] as String,
      customerArea: map['customer_area'] != null ? map['customer_area'] as String : null,
      customerPhone: map['customer_phone'] != null ? map['customer_phone'] as num : null,
      note: map['note'] != null ? map['note'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Customer.fromJson(String source) => Customer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Customer(id: $id, customerName: $customerName, customerArea: $customerArea, customerPhone: $customerPhone, note: $note)';
  }

  @override
  bool operator ==(covariant Customer other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.customerName == customerName &&
      other.customerArea == customerArea &&
      other.customerPhone == customerPhone &&
      other.note == note;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      customerName.hashCode ^
      customerArea.hashCode ^
      customerPhone.hashCode ^
      note.hashCode;
  }
}

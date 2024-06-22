// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Category {
  num? id;
  String categoryName;
  String? note;
  Category({
    this.id,
    required this.categoryName,
    this.note,
  });

  Category copyWith({
    num? id,
    String? categoryName,
    String? note,
  }) {
    return Category(
      id: id ?? this.id,
      categoryName: categoryName ?? this.categoryName,
      note: note ?? this.note,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category_name': categoryName,
      'note': note,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] != null ? map['id'] as num : null,
      categoryName: map['category_name'] as String,
      note: map['note'] != null ? map['note'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Category(id: $id, categoryName: $categoryName, note: $note)';

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.categoryName == categoryName &&
        other.note == note;
  }

  @override
  int get hashCode => id.hashCode ^ categoryName.hashCode ^ note.hashCode;
}

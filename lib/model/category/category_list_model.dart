// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'category_model.dart';

class CatrgoriesList {
  List<Category> categories;
  CatrgoriesList({
    required this.categories,
  });

  CatrgoriesList copyWith({
    List<Category>? categories,
  }) {
    return CatrgoriesList(
      categories: categories ?? this.categories,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': categories.map((x) => x.toMap()).toList(),
    };
  }

  factory CatrgoriesList.fromMap(List map) {
    return CatrgoriesList(
        categories: List.generate(
      map.length,
      (index) => Category.fromMap(map[index]),
    ));
  }

  String toJson() => json.encode(toMap());

  // factory CatrgoriesList.fromJson(String source) =>
  //     CatrgoriesList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CatrgoriesList(categories: $categories)';

  @override
  bool operator ==(covariant CatrgoriesList other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.categories, categories);
  }

  @override
  int get hashCode => categories.hashCode;
}

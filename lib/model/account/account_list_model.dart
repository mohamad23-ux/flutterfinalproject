// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'account_model.dart';

class AccountsList {
  List<Account> accounts;
  AccountsList({
    required this.accounts,
  });

  AccountsList copyWith({
    List<Account>? accounts,
  }) {
    return AccountsList(
      accounts: accounts ?? this.accounts,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': accounts.map((x) => x.toMap()).toList(),
    };
  }

  factory AccountsList.fromMap(List map) {
    return AccountsList(
      accounts: List.generate(
        map.length,
        (index) => Account.fromMap(map[index]),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  // factory AccountsList.fromJson(String source) =>
  //     AccountsList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AccountsList(accounts: $accounts)';

  @override
  bool operator ==(covariant AccountsList other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.accounts, accounts);
  }

  @override
  int get hashCode => accounts.hashCode;
}

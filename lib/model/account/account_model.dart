// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Account {
  num? id;
  String accountName;
  num? accountUp;
  num? accountDown;
  Account({
    this.id,
    required this.accountName,
    this.accountUp,
    this.accountDown,
  });

  Account copyWith({
    num? id,
    String? accountName,
    num? accountUp,
    num? accountDown,
  }) {
    return Account(
      id: id ?? this.id,
      accountName: accountName ?? this.accountName,
      accountUp: accountUp ?? this.accountUp,
      accountDown: accountDown ?? this.accountDown,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account_name': accountName,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      id: map['id'] != null ? map['id'] as num : null,
      accountName: map['account_name'] as String,
      accountUp: map['accountUp'] != null
          ? map['accountUp'] as num
          : null,
      accountDown: map['accountDown'] != null
          ? map['accountDown'] as num
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Account.fromJson(String source) =>
      Account.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Account(id: $id, accountName: $accountName, accountUp: $accountUp, accountDown: $accountDown)';
  }

  @override
  bool operator ==(covariant Account other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.accountName == accountName &&
        other.accountUp == accountUp &&
        other.accountDown == accountDown;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        accountName.hashCode ^
        accountUp.hashCode ^
        accountDown.hashCode;
  }
}

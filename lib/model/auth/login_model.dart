// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Login {
  String name;
  String password;
  Login({
    required this.name,
    required this.password,
  });

  Login copyWith({
    String? name,
    String? password,
  }) {
    return Login(
      name: name ?? this.name,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
    };
  }

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      name: map['name'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Login.fromJson(String source) => Login.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Login(name: $name, password: $password)';

  @override
  bool operator ==(covariant Login other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.password == password;
  }

  @override
  int get hashCode => name.hashCode ^ password.hashCode;
}

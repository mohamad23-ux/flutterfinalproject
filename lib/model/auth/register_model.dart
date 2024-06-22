import 'dart:convert';

class Register {
  String name;
  String password;
  String confirmPassword;
  Register({
    required this.name,
    required this.password,
    required this.confirmPassword,
  });

  Register copyWith({
    String? name,
    String? password,
    String? confirmPassword,
  }) {
    return Register(
      name: name ?? this.name,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
      'confirm_password': confirmPassword,
    };
  }

  factory Register.fromMap(Map<String, dynamic> map) {
    return Register(
      name: map['name'] as String,
      password: map['password'] as String,
      confirmPassword: map['confirm_password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Register.fromJson(String source) => Register.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Register(name: $name, password: $password, confirmPassword: $confirmPassword)';

  @override
  bool operator ==(covariant Register other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.password == password &&
      other.confirmPassword == confirmPassword;
  }

  @override
  int get hashCode => name.hashCode ^ password.hashCode ^ confirmPassword.hashCode;
}

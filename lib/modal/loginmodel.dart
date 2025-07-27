// class LoginResponse {
//   final String message;
//   final String token;
//   final User user;

//   LoginResponse({
//     required this.message,
//     required this.token,
//     required this.user,
//   });

//   factory LoginResponse.fromJson(Map<String, dynamic> json) {
//     return LoginResponse(
//       message: json['message'],
//       token: json['token'],
//       user: User.fromJson(json['user']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'message': message,
//       'token': token,
//       'user': user.toJson(),
//     };
//   }
// }

// class User {
//   final int id;
//   final String name;
//   final String email;
//   final String role;
//   final String contact;
//   final String? address;
//   final String? gender;
//   final DateTime createdAt;
//   final DateTime updatedAt;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.role,
//     required this.contact,
//     this.address,
//     this.gender,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       role: json['role'],
//       contact: json['contact'],
//       address: json['address'],
//       gender: json['gender'],
//       createdAt: DateTime.parse(json['created_at']),
//       updatedAt: DateTime.parse(json['updated_at']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'email': email,
//       'role': role,
//       'contact': contact,
//       'address': address,
//       'gender': gender,
//       'created_at': createdAt.toIso8601String(),
//       'updated_at': updatedAt.toIso8601String(),
//     };
//   }
// }
class loginresponse {
  String? message;
  String? token;
  User? user;

  loginresponse({this.message, this.token, this.user});

  loginresponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['token'] = token;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? role;
  String? contact;
  Null address;
  Null gender;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.email,
      this.role,
      this.contact,
      this.address,
      this.gender,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    contact = json['contact'];
    address = json['address'];
    gender = json['gender'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['role'] = role;
    data['contact'] = contact;
    data['address'] = address;
    data['gender'] = gender;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

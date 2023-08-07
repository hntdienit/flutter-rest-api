import 'package:flutter_api/models/user/user_dob.model.dart';
import 'package:flutter_api/models/user/user_location.model.dart';
import 'package:flutter_api/models/user/user_name.model.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
  });

  factory User.fromMap(Map<String, dynamic> user) {
    final name = UserName.fromMap(user['name']);
    final dob = UserDob.fromMap(user['dob']);
    final location = UserLocation.fromMap(user['location']);

    return User(
        gender: user['gender'],
        email: user['email'],
        phone: user['phone'],
        cell: user['cell'],
        nat: user['nat'],
        name: name,
        dob: dob,
        location: location);
  }

  String get fullName {
    return '${name.first} ${name.last}';
  }
}

class UserDob {
  final DateTime date;
  final int age;

  UserDob({required this.date, required this.age});

  factory UserDob.fromMap(Map<String, dynamic> dob) {
    return UserDob(date: DateTime.parse(dob['date']), age: dob['age']);
  }
}

class UserName {
  final String title;
  final String first;
  final String last;

  UserName({required this.title, required this.first, required this.last});

  factory UserName.fromMap(Map<String, dynamic> name) {
    return UserName(
        title: name['title'], first: name['first'], last: name['last']);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_api/models/user/user.model.dart';
import 'package:flutter_api/services/users.service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 117, 187, 245),
        title: const Text("REST API"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final name = user.fullName;
            final gender = user.gender;
            final color =
                user.gender == 'male' ? Colors.blue[100] : Colors.green[100];
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network('https://picsum.photos/250?image=9'),
              ),
              title: Text(name),
              subtitle: Text(gender),
              tileColor: color,
            );
          }),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UsersService.fetchUsers();
    setState(() {
      users = response;
    });
  }
}

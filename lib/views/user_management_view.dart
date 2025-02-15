import 'package:flutter/material.dart';

class UserManagementView extends StatelessWidget {
  const UserManagementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Approve User')),
          ElevatedButton(onPressed: () {}, child: const Text('Restrict User')),
          ElevatedButton(onPressed: () {}, child: const Text('Delete User')),
        ],
      ),
    );
  }
}

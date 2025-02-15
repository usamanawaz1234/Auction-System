import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final Function(int) onTap;
  const Sidebar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Admin Panel', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(title: const Text('User Management'), onTap: () => onTap(0)),
          ListTile(title: const Text('Auction Management'), onTap: () => onTap(1)),
          ListTile(title: const Text('Bid Monitoring'), onTap: () => onTap(2)),
          ListTile(title: const Text('Transactions'), onTap: () => onTap(3)),
          ListTile(title: const Text('Reports & Analytics'), onTap: () => onTap(4)),
        ],
      ),
    );
  }
}

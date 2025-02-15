import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/navigation_controller.dart';
import 'views/sidebar.dart';
import 'views/user_management_view.dart';
import 'views/auction_management_view.dart';
import 'views/bid_monitoring_view.dart';
import 'views/transactions_view.dart';
import 'views/reports_view.dart';

void main() {
  runApp(const AdminPanelApp());
}

class AdminPanelApp extends StatelessWidget {
  const AdminPanelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const AdminDashboard(),
      ),
    );
  }
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  static final List<Widget> _screens = [
    const UserManagementView(),
    const AuctionManagementView(),
    const BidMonitoringView(),
    const TransactionsView(),
    const ReportsView(),
  ];

  @override
  Widget build(BuildContext context) {
    final navController = Provider.of<NavigationController>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Panel')),
      drawer: Sidebar(onTap: (index) {
        navController.setIndex(index);
        Navigator.pop(context);
      }),
      body: _screens[navController.selectedIndex],
    );
  }
}

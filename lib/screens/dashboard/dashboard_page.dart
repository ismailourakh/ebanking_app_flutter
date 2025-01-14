import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome to your dashboard'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/transactions');
              },
              child: Text('View Transactions'),
            ),
          ],
        ),
      ),
    );
  }
}

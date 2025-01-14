import 'package:flutter/material.dart';

class TransactionDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final transaction = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de la transaction'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Titre : ${transaction['title']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Montant : ${transaction['amount']} EUR', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Date : ${transaction['date']}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

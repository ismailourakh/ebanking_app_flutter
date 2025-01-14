import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {'title': 'Paiement', 'amount': 150.00, 'date': '2023-01-01'},
    {'title': 'Achat', 'amount': 75.00, 'date': '2023-01-02'},
    {'title': 'Salaire', 'amount': 1250.00, 'date': '2023-01-03'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return ListTile(
            title: Text(transaction['title']),
            subtitle: Text(transaction['date']),
            trailing: Text('${transaction['amount']} EUR'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/transactionDetails',
                arguments: transaction,
              );
            },
          );
        },
      ),
    );
  }
}

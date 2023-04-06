import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_item.dart';
import 'transaction_empty.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) onRemove;

  const TransactionList(this.transactions, this.onRemove, {super.key});

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? const TransactionEmpty()
        : ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) {
              final transaction = transactions[index];

              return TransactionItem(
                  transaction: transaction, onRemove: onRemove);
            });
  }
}

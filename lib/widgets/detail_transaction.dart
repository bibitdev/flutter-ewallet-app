import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/model/transaction.dart';
import 'package:flutter_wallet_app/widgets/transaction_item.dart';

class DetailTransaction extends StatelessWidget {
  const DetailTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              const Text(
                'Histori Transaksi',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF3D538F),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Expanded(child: ListView.builder(
          itemCount: transaction.length,
          itemBuilder: (context, index) {
            return TransactionItem(transaction: transaction[index]);
          },
        ))
      ],
    );
  }
}

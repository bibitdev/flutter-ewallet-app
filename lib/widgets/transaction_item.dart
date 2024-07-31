import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/model/transaction.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFF3D538F),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 132, 187, 232),
                borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Center(
                child: Text(
                  transaction.to
                      .split(' ')
                      .map((e) => e.substring(0, 1))
                      .toList()
                      .join(),
                  style: const TextStyle(
                    color: Color(0xFF3D538F),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    transaction.to,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF3D538F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  transaction.date,
                  style: const TextStyle(
                    color: Color(0xFF3D538F),
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "- Rp. ${transaction.amount}",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFFFA6D6D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                transaction.description,
                style: const TextStyle(color: Color(0xFF3D538F), fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}

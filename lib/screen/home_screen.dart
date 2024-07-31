import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/model/transaction.dart';
import 'package:flutter_wallet_app/widgets/detail_transaction.dart';
import 'package:flutter_wallet_app/widgets/menu_widget.dart';
import 'package:flutter_wallet_app/widgets/transaction_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue.shade800,
            Colors.white60,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 30,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          'Bibit Raikhan A',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Stack(
                      children: [
                        Badge(
                          label: const Text(
                            "4",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications_none),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: const Column(
                children: [
                  Text(
                    'Saldo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 2.998.000.000,00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuWidget(icon: Icons.send, text: 'Kirim'),
                  MenuWidget(
                      icon: Icons.account_balance_wallet, text: 'Terima'),
                  MenuWidget(icon: Icons.payment, text: 'Bayar'),
                  MenuWidget(icon: Icons.more_horiz, text: 'Lainnya'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 25),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Transaksi Terakhir',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3D538F),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return const DetailTransaction();
                                },
                              );
                            },
                            child: const Text(
                              'Lihat Semua',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3D538F),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: transaction.length,
                        itemBuilder: (context, index) {
                          return TransactionItem(
                              transaction: transaction[index]);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

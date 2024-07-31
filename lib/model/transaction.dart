class Transaction {
  final int id;
  final String to;
  final String amount;
  final String date;
  final String description;

  Transaction(this.id, this.to, this.amount, this.date, this.description);
}

final List<Transaction> transaction = [
  Transaction(
    1,
    'Shopee',
    'Rp.399.000',
    '21 Juli 2024 12:33',
    'T-Shirt',
  ),
  Transaction(
    2,
    'Traveloka',
    '950.000',
    '12 Juli 2022 12:13',
    'Hotel',
  ),
  Transaction(
    3,
    'Tokopedia',
    '440.000',
    '13 Juli 2022 12:13',
    'Kereta',
  ),
  Transaction(
    4,
    'Blibli',
    '4.500.000',
    '10 Juli 2022 12:13',
    'LCD',
  ),
  Transaction(
    5,
    'Lazada',
    '2.000.000',
    '20 Juli 2022 12:13',
    'Mouse',
  ),
  Transaction(
    6,
    'Flip',
    '3.000.000',
    '23 Juli 2022 12:13',
    'Transfer',
  ),
  Transaction(
    7,
    'Tiket.com',
    '750.000',
    '4 Juli 2022 12:13',
    'Pesawat',
  ),
  Transaction(
    8,
    'Traveloka',
    '950.000',
    '12 Juli 2022 12:13',
    'Pesawat',
  ),
  Transaction(
    9,
    'Pegipegi',
    '860.000',
    '18 Juli 2022 12:13',
    'Hotel',
  ),
  Transaction(
    10,
    'Flip',
    '250.000',
    '26 Juli 2022 12:13',
    'transfer',
  ),
];

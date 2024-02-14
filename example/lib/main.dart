import 'package:devaloop_menu_page/menu_page.dart';
import 'package:devaloop_group_item/group_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MenuPage(
        title: 'Toko Modern Sejahtera',
        subtitle: 'Toko Alat Masak & Perabotan Rumah Tangga',
        menu: [
          GroupItem(
            title: 'Transaction',
            contents: [
              GroupContent(
                title: 'Sell',
                subtitle: 'Sell',
                leading: const Icon(Icons.sell),
              ),
              GroupContent(
                title: 'Buy',
                subtitle: 'Buy',
                leading: const Icon(Icons.shop),
              ),
            ],
          ),
          GroupItem(
            title: 'Inventory',
            contents: [
              GroupContent(
                title: 'Inventory',
                subtitle: 'Inventory',
                leading: const Icon(Icons.inventory),
              ),
            ],
          ),
          GroupItem(
            title: 'Reporting',
            contents: [
              GroupContent(
                title: 'Reporting',
                subtitle: 'Reporting',
                leading: const Icon(Icons.summarize),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

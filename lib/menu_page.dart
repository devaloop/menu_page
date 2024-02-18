library devaloop_menu_page;

import 'package:devaloop_group_item/group_item.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final String title;
  final String subtitle;

  final List<GroupItem> menu;

  const MenuPage(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            subtitle,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: menu,
        ),
      ),
    );
  }
}

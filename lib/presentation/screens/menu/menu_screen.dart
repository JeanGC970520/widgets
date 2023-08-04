
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets/config/menu/menu_items.dart';


class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Widgets'),
      ),
      body: ListView.separated(
        itemCount: appMenuItems.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          final item = appMenuItems[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.subTitle),
            onTap: () => context.push( item.link ),
            leading: Icon(item.icon),
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
          );
        },
      ),
    );
  }
}
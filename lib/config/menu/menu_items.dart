import 'package:flutter/material.dart';

// Entity
class MenuItem {

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon,
  });

  final String title;
  final String subTitle;
  final String link; // route
  final IconData icon;

}

const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Material Banner', 
    subTitle: 'A banner, useful to notifications', 
    link: '/material-banner', 
    icon: Icons.notification_important,
  ),

];
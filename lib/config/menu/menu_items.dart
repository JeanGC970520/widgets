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

  MenuItem(
    title: 'Preferred Size', 
    subTitle: 'A way to build an custom AppBar', 
    link: '/preferred-size', 
    icon: Icons.photo_size_select_small,
  ),

  MenuItem(
    title: 'Long Press Draggable', 
    subTitle: 'Move an object doing long press on its self', 
    link: '/long-press-draggable', 
    icon: Icons.touch_app,
  ),

  MenuItem(
    title: 'InteractiveViewer', 
    subTitle: 'Move anything inside our app. Zoom it and move it out of its place', 
    link: '/interactive-viewer', 
    icon: Icons.zoom_out_map_sharp,
  ),

  MenuItem(
    title: 'Reorderable List View', 
    subTitle: 'A List that can be draggered and ordered by the user', 
    link: '/reorderable-list-view', 
    icon: Icons.drag_handle_sharp,
  ),

];
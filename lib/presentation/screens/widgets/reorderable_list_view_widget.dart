

import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({super.key});

  @override
  State<ReorderableListViewWidget> createState() => _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  
  List<int> items = List<int>.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReorderableListView'),
      ),
      body: ReorderableListView(
        children: List.generate(
          items.length,
          (index) => ListTile(
            key: Key('$index'),
            title: Text( 'Item ${items[index]}' ),
            tileColor: items[index].isOdd ? Colors.blueGrey : Colors.blueAccent,
            trailing: const Icon( Icons.drag_handle_sharp ),
          )
        ), 
        onReorder: (oldIndex, newIndex) {
          // *  When the item is dragged down, the new index is greater by one
          // *  that the target item because is like a new item has been inserted after of
          // *  the target item 
          print('Old: $oldIndex, New: $newIndex');
          setState(() {
            if( oldIndex < newIndex ) {
              newIndex -= 1;
            }
            final int newItem = items.removeAt(oldIndex);
            items.insert(newIndex, newItem); 
          });
        },
      ),
    );
  }
}
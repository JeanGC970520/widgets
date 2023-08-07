


import 'package:flutter/material.dart';

class LongPressDraggableWidget extends StatelessWidget {
  const LongPressDraggableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LongPressDraggable'),
      ),
      body: const _LongPressDraggableWidgetView(),
    );
  }
}

class _LongPressDraggableWidgetView extends StatefulWidget {
  const _LongPressDraggableWidgetView();

  @override
  State<_LongPressDraggableWidgetView> createState() => _LongPressDraggableWidgetViewState();
}

class _LongPressDraggableWidgetViewState extends State<_LongPressDraggableWidgetView> {
  
  Offset _offset = const Offset(50, 50);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        // * IMPORTANT: The layout builder help us to extract all space permitted by
        // * its parent.
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                left: _offset.dx,
                top: _offset.dy,
                child: LongPressDraggable(
                  feedback: Image.network(
                    'https://www.hartz.com/wp-content/uploads/2022/04/small-dog-owners-1.jpg',
                    height: 150,
                    color: Colors.orange,
                    colorBlendMode: BlendMode.colorBurn,                
                  ),
                  child: Image.network(
                    'https://www.hartz.com/wp-content/uploads/2022/04/small-dog-owners-1.jpg',
                    height: 150,                
                  ), 
                  onDragEnd: (details) {
                    print('''
Details:
  dx : ${details.offset.dx}
  dy : ${details.offset.dy}
Constraints:
  height: ${constraints.maxHeight}
  width: ${constraints.maxWidth}
MediaQuery:
  height: ${MediaQuery.of(context).size.height}
  width: ${MediaQuery.of(context).size.width}
''');
                    setState(() {
                      // * so here adjust the height with total height of the device(MediaQuery)
                      // * and the constraints(LayoutBuilder) because the details object (LongPressDraggable)
                      // * considers all the screen space.
                      double adjustment = MediaQuery.of(context).size.height - 
                        constraints.maxHeight;
                      _offset = Offset(
                        details.offset.dx, details.offset.dy - adjustment
                      );
                      print('${details.offset.dx} , ${details.offset.dy - adjustment}');
                    });
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
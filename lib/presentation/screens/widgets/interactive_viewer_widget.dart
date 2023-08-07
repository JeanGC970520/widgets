

import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatelessWidget {
  const InteractiveViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text('InteractiveViewer'),
      ),
      body: InteractiveViewer(
        // * borderMargin allows us how much to separate the child of InteractiveViewer 
        // * from his father
        boundaryMargin: const EdgeInsets.all(10),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Inside of an InteractiveViewer'),
          ),
        ),
      )
    );
  }
}
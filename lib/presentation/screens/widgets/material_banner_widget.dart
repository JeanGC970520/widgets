
import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatelessWidget {
  const MaterialBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    const icon =  Icons.notification_important;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: Center(
        child: FilledButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                elevation: 5,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                leading: Icon( icon, color: colors.primary, ),
                content: const Text('This is a notification'), 
                actions: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
                    }, 
                    child: const Text('Dissmiss')
                  ),
                ]
              )
            );
          }, 
          icon: const Icon( icon ), 
          label: const Text('Show Material Banner')
        ),
      ),
    );
  }
}
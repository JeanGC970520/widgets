

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class PreferrefSizeWidget extends StatelessWidget {
  const PreferrefSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final style = Theme.of(context).textTheme.headlineLarge;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.pinkAccent,
              ]
            ),
          ),
          child: SafeArea(
            child: SizedBox(
              height: 120,
              child: Center(
                child: ListTile(
                  title: Text(
                    'PreferredSize', 
                    style: style,
                  ),
                  leading: IconButton(
                    onPressed: () => context.pop(), 
                    icon: Icon( 
                      Icons.arrow_back_ios_new_rounded,
                      color: colors.background, 
                    )
                  ),
                  trailing: IconButton( 
                    icon: const Icon(Icons.search, size: 30,),
                    onPressed: () {},
                  ),
                )
              ),
            ),
          ),
        )
      ),
    );
  }
}
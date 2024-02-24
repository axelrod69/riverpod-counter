import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/screenTwo/presentation/screenTwoPage.dart';

import '../application/counterNotifier.dart';

class ScreenOnePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counter);
    final counterNotifier = ref.read(counter.notifier);

    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ScreenTwoPage()))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => counterNotifier.decreement(),
                  icon: Icon(Icons.subtitles_rounded)),
              Text(counterState.counter.toString()),
              IconButton(
                  onPressed: () => counterNotifier.increement(),
                  icon: Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}

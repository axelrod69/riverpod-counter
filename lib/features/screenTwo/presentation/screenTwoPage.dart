import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../screenOne/application/counterNotifier.dart';

class ScreenTwoPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counter);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Text(counterState.counter.toString()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final txt = Provider((ref){
  return "Provider";
});

class riverText extends ConsumerWidget {
  const riverText({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    String name = ref.watch(txt);
    return Scaffold(
      appBar: AppBar(title: Text("Text Show"),),
      body: Center(child: Text(name),),
    );
  }
}

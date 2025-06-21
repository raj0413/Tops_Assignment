import 'package:flu_prac/navigation/bottomNavBar/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//
// Provider
//
final notiPro = StateNotifierProvider((ref) {
  return searchNotifier();
});

//
//  Class
//
class searchNotifier extends StateNotifier<searchState> {
  searchNotifier() : super(searchState(search: ''));

  void searchi(String que) {
    state = state.copyWith(search: que);
  }
}

//
// Other Class
//
class searchState {
  final String search;
  searchState({required this.search});

  searchState copyWith({String? search}) {
    return searchState(search: search ?? this.search);
  }
}

//
// Main Stless class
//

class searchPro extends ConsumerWidget {
  const searchPro({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("build 1");
    return Scaffold(
      appBar: AppBar(title: Text("Notifier Provider")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              onChanged: (value) {
                ref.read(notiPro.notifier).searchi(value);
              },
            ),
            SizedBox(height: 20),
            Consumer(
              builder: (context, ref, child) {
                print("build 2");
                final txtshow = ref.watch(notiPro);
                return Text(txtshow.search);
              },
            ),
          ],
        ),
      ),
    );
  }
}

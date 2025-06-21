import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final count = StateProvider((ref){
  return 0;
});
class countAppPro extends ConsumerWidget {
  const countAppPro({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    print("build");

    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: Column(
        children: [

          Consumer(builder: (con , ref,child){
            int cnt = ref.watch(count);
            print("build 2");
            return Text("${cnt}" ,style: TextStyle(fontSize: 35),);
          }),


          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            ref.read(count.notifier).state++;
          }, child: Icon(Icons.add))


        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool ch1 = false;
  bool ch2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox"),),
      body: Column(
        children: [
          ListTile(
            leading: Checkbox.adaptive(value: ch1, onChanged: (value) {
              setState(() {
                ch1 = value!;
              });
            },) ,
            title: Text("Op1"),
          ),
          ListTile(
            leading: Checkbox(value: ch2, onChanged: (value) {
              setState(() {
                ch2 = value!;
              });
            },) ,
            title: Text("Op2"),
          )
        ],
      ),
    );
  }
}

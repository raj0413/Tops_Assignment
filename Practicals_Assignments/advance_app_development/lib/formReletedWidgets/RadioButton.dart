import 'package:flutter/material.dart';

class radioButton extends StatefulWidget {
  const radioButton({super.key});

  @override
  State<radioButton> createState() => _radioButtonState();
}

class _radioButtonState extends State<radioButton> {
 var cur = " "  ;
 @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Radio Button"),),
    body: Column(
      children: [
        SizedBox(height: 20,),
        ListTile(title: Text("Male"),
          leading: Radio(value: "op1", groupValue: cur, onChanged: (value) {
            setState(() {
              cur = value.toString();
            });
          },),
        ),
        ListTile(title: Text("Female"),
          leading: Radio(value: "op2", groupValue: cur, onChanged: (value) {
            setState(() {
              cur = value.toString();
            });
          },),
        )
      ],
    ),);
  }
}

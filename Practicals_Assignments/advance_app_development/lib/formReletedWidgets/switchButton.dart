import 'package:flutter/material.dart';

class SwitchBtn extends StatefulWidget {
  const SwitchBtn({super.key});

  @override
  State<SwitchBtn> createState() => _SwitchBtnState();
}

class _SwitchBtnState extends State<SwitchBtn> {
  bool svalue = false;
  var t= "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch"),),
      body: Column(
        children: [
          ListTile(
            title: Text(t),
            leading: Switch.adaptive(activeColor: Colors.green,
              activeTrackColor: Colors.redAccent,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.pink,
              value: svalue, onChanged: (value) {
              setState(() {
                svalue = value;
                if(svalue){
                  t = svalue.toString();
                }
                else{
                  t = svalue.toString();
                }
              });
            },),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DropDownItem extends StatefulWidget {
  const DropDownItem({super.key});

  @override
  State<DropDownItem> createState() => _DropDownItemState();
}

class _DropDownItemState extends State<DropDownItem> {
  String? drpvalue;
  final country = ["India", "China", "USA", "Russia", "Japan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dropdown")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  dropdownColor: Colors.grey,
                  value: drpvalue,
                  iconSize: 30,
                  iconEnabledColor: Colors.blue,
                  iconDisabledColor: Colors.black,
                  menuMaxHeight: 200,
                  hint: Text("Select Country"),
                  isExpanded: true,
                  underline: SizedBox(),
                  icon:  Icon(Icons.arrow_drop_down),
                  items: country.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      drpvalue = value!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              drpvalue != null ? "Selected: $drpvalue" : "No country selected",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

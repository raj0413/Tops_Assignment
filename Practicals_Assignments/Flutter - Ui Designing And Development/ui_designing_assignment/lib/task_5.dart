import 'package:flutter/material.dart';

class ResponsiveRowLayout extends StatelessWidget {
  const ResponsiveRowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(height: 100, color: Colors.red),
        ),
        Expanded(
          flex: 2,
          child: Container(height: 100, color: Colors.green),
        ),
        Expanded(
          flex: 1,
          child: Container(height: 100, color: Colors.blue),
        ),
      ],
    );
  }
}

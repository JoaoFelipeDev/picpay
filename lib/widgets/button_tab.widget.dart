import 'package:flutter/material.dart';

class ButtonTab extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Color color;
  const ButtonTab({this.isSelected, this.text, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: isSelected
          ? BoxDecoration(
              border: Border(bottom: BorderSide(width: 2, color: color)))
          : null,
      child: TextButton(
          onPressed: () => {},
          child: Text(this.text, style: TextStyle(color: color, fontSize: 18))),
    );
  }
}

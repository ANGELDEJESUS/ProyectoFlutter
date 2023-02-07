import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  String label;
  Inputs(this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(""),
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.amber),
                borderRadius: BorderRadius.circular(15)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.black26),
                borderRadius: BorderRadius.circular(15)),
            labelText: label,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({
    Key? key,
    required this.labalName,
    required this.hintName,
    required this.colorName,
    required this.controller,
    required this.icon,
    required this.textInputType,
  }) : super(key: key);

  final String labalName;
  final String hintName;
  final Color colorName;
  final TextEditingController controller;
  final Icon icon;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labalName,
            style: TextStyle(
                color: colorName, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller,
                  keyboardType: textInputType,
                  decoration: InputDecoration(
                    hintText: hintName,
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    border: OutlineInputBorder(),
                    suffixIcon: icon,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

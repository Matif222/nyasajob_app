import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.name,
      required this.color,
      required this.onPress});
  final String name;
  final Color color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
            child: Text(
          name,
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }
}

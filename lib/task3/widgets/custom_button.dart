import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}

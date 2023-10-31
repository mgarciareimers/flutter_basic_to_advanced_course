import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final IconData iconData;
  final void Function() onPressed;

  const CustomFloatingActionButton({
    required this.iconData,
    required this.onPressed,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(
        iconData
      ),
    );
  }
}

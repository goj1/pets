import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  final Widget label;
  final bool disabled;
  final bool rounded;
  final Function() onTap;

  const ButtonDefault({
    Key? key,
    required this.label,
    required this.disabled,
    required this.rounded,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onTap,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rounded ? 50.0 : 8.0)
          )
        ),
      ),
      child: label,
    );
  }
}

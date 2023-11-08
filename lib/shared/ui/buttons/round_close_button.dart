import 'package:flutter/material.dart';

class RoundCloseButtonDefault extends StatelessWidget {
  final Widget label;
  final bool disabled;
  final Color color;
  final double size;
  final Function() onTap;

  const RoundCloseButtonDefault({
    Key? key,
    required this.label,
    required this.disabled,
    required this.color,
    required this.size,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(25.0),
      color: color,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: size,
          width: size,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: label,
            ),
          ),
        ),
      ),
    );
  }
}
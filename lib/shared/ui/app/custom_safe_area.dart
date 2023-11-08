import 'package:flutter/material.dart';

class CustomSafeArea extends StatelessWidget {
  final Widget child;
  final bool? hasPadding;
  final double? paddingValue;

  const CustomSafeArea({
    Key? key,
    required this.child,
    this.hasPadding,
    this.paddingValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: EdgeInsets.only(
            left: hasPadding == true ? paddingValue! : 0.0,
            right: hasPadding == true ? paddingValue! : 0.0,
          ),
          child: child,
        ),
      ),
    );
  }
}

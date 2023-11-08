import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:pets/shared/ui/dialogs/dialog_message.dart';
import 'package:pets/util/enums/app_enum.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String? hint;
  final Widget? prefix;
  final IconData? sufixIcon;
  final Function()? onPressedSufixIconButtom;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;
  final bool? obscuredText;
  final List<TextInputFormatter>? formatters;
  final String? messageValidation;
  final String? sufixMessage;
  final String? sufixMessageImage;
  final AppEnum? action;
  final AppEnum? typeSufixAction;
  final String? helperText;
  final int? maxlines;
  final EdgeInsetsGeometry? contentPadding;
  final Color? borderColor;
  final double? topLeftBorder;
  final double? topRightBorder;
  final double? bottomLeftBorder;
  final double? bottomRightBorder;
  final double? iconSize;
  final bool? filled;
  final Color? fillColor;
  final Color? textColor;

  const CustomTextFormField({
    Key? key,
    this.controller,
    required this.label,
    this.hint,
    this.prefix,
    this.sufixIcon,
    this.onPressedSufixIconButtom,
    this.onChanged,
    this.keyboardType,
    this.obscuredText,
    this.formatters,
    this.messageValidation,
    this.sufixMessage,
    this.sufixMessageImage,
    this.action,
    this.typeSufixAction,
    this.helperText,
    this.maxlines,
    this.contentPadding,
    this.borderColor,
    this.topLeftBorder,
    this.topRightBorder,
    this.bottomLeftBorder,
    this.bottomRightBorder,
    this.iconSize,
    this.filled,
    this.fillColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      inputFormatters: formatters,
      cursorColor: AppColors.primary,
      minLines: 1,
      maxLines: maxlines,
      decoration: InputDecoration(
        labelText: label.isNotEmpty ? label : null,
        filled: filled,
        fillColor: fillColor,
        hintText: hint,
        helperText: helperText,
        prefixIcon: prefix,
        contentPadding: contentPadding,
        enabled: true,
        labelStyle: TextStyle(
          color: AppColors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        suffixIcon: IconButton(
          icon: sufixIcon != null
              ? Material(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {},
                    child: Icon(
                      sufixIcon,
                      size: iconSize ?? 32.0,
                      color: AppColors.secondary,
                    ),
                  ),
                )
              : const Text(''),
          onPressed: sufixIcon != null
              ? () {
                  if (typeSufixAction == AppEnum.tip) {
                    showDialog(
                      barrierColor: AppColors.primary,
                      context: context,
                      builder: (BuildContext customContext) => DialogMessage(
                        title: 'Dica!',
                        message: sufixMessage ?? '',
                        image: sufixMessageImage,
                      ),
                    );
                  } else {
                    if (onPressedSufixIconButtom != null) onPressedSufixIconButtom!();
                  }
                }
              : null,
        ),
        border: const OutlineInputBorder(),
      ),
      keyboardType: keyboardType,
      obscureText: obscuredText ?? false,
      style: TextStyle(
        fontSize: 18.0,
        color: textColor,
      ),
      onChanged: onChanged,
    );
  }
}

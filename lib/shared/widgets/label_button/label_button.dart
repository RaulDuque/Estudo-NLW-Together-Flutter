import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback onePressed;
  final TextStyle? style;
  const LabelButton({
    Key? key,
    required this.label,
    required this.onePressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: TextButton(
        onPressed: onePressed,
        child: Text(
          label,
          style: style ?? TextStyles.buttonHeading,
        ),
      ),
    );
  }
}

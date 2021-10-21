import 'package:flutter/material.dart';
import 'package:nlw_payflow/shared/themes/app_text_styles.dart';
import 'package:nlw_payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String firstLabel;
  final VoidCallback firstOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enableFirstColor;

  const SetLabelButtons({
    Key? key,
    required this.firstLabel,
    required this.firstOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enableFirstColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: firstLabel,
              onPressed: firstOnPressed,
              style: enableFirstColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          const VerticalDivider(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: secondaryOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}

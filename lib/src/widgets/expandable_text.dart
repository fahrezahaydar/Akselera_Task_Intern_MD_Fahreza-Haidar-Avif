import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/core/app_ts.dart';

import '../core/app_colors.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText(this.text, {super.key, this.trimLength = 120});

  final String text;
  final int trimLength;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final fullText = widget.text;
    final showTrim = fullText.length > widget.trimLength;
    final displayText = !isExpanded && showTrim
        ? '${fullText.substring(0, widget.trimLength)}... '
        : '$fullText ';

    return RichText(
      text: TextSpan(
        style: AppTs.p2.copyWith(color: AppColors.darkGrey),
        children: [
          TextSpan(text: displayText),
          if (showTrim)
            TextSpan(
              text: isExpanded ? 'See less' : 'See more',
              style: AppTs.p2.copyWith(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
            ),
        ],
      ),
    );
  }
}

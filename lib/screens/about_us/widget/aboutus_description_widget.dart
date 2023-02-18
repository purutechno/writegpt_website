import 'package:flutter/material.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class AboutUsDescriptionWidget extends StatelessWidget {
  final String text1;
  final String text2;

  const AboutUsDescriptionWidget({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          TextWidget(
            text1,
            style: CustomTextStyles.text18_500,
          ),
          TextWidget(
            text2,
            style: CustomTextStyles.text18_500,
          ),
        ],
      ),
    );
  }
}

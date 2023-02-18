import 'package:flutter/material.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class HarnessGptDescriptionWidget extends StatelessWidget {
  const HarnessGptDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listTitle = [
      "ReWrite & reposition any content ",
      "Write / Reply to emails automatically",
      "Summarise any article or content source",
      "Research flawlessly ",
      "Fix & Review Code",
      "Translate on the spot",
    ];
    double radius = 10;
    return Container(
      // color: Colors.red,
      // margin: EdgeInsets.only(top: 30),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...listTitle.map(
            (e) => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  width: radius / 2,
                  height: radius / 2,
                ),
                TextWidget(
                  e,
                  style: CustomTextStyles.text16_500,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

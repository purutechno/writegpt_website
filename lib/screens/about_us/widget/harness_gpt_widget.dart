import 'package:flutter/material.dart';
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
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          ...listTitle.map(
            (e) => ListTile(
              title: TextWidget(e),
            ),
          )
        ],
      ),
    );
  }
}

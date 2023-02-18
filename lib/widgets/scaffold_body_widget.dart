import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/utils/asset_utils.dart';
import 'package:writegpt_website/widgets/app_bar_widget.dart';

class ScaffoldBodyWidget extends StatefulWidget {
  final Widget child;
  const ScaffoldBodyWidget({super.key, required this.child});

  @override
  State<ScaffoldBodyWidget> createState() => _ScaffoldBodyWidgetState();
}

class _ScaffoldBodyWidgetState extends State<ScaffoldBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: 1920,
          // alignment: Alignment.center,
          child: ListView(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      constraints: BoxConstraints(maxHeight: 900),
                      width: 1920,
                      child: Image.asset(
                        AssetUtils.getPngImage('colored_bg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const AppbarWidget(),
                  Padding(
                    padding: const EdgeInsets.only(top: 64.0),
                    child: widget.child,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

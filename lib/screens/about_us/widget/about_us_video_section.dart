import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/widgets/bootstrap_container_widget.dart';
import 'package:writegpt_website/widgets/custom_flutter_bootstrap.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class AboutUsVideoSectionWidget extends StatefulWidget {
  final String title;
  final Widget child;
  final String videoUrl;
  final bool isVideoFirst;
  const AboutUsVideoSectionWidget({
    super.key,
    required this.title,
    required this.child,
    required this.videoUrl,
    this.isVideoFirst = false,
  });

  @override
  State<AboutUsVideoSectionWidget> createState() =>
      _AboutUsVideoSectionWidgetState();
}

class _AboutUsVideoSectionWidgetState extends State<AboutUsVideoSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomBootstrapContainer(
      children: [
        CustomBootstrapRow(
          children: [
            CustomBootstrapCol(
              sizes: 'col-12 col-lg-6',
              child: widget.isVideoFirst
                  ? VideoSectionWidget(
                      videoUrl: widget.videoUrl,
                    )
                  : AboutUsVideoInfoWidget(
                      title: widget.title,
                      child: widget.child,
                    ),
            ),
            CustomBootstrapCol(
              sizes: 'col-12 col-lg-6',
              child: !widget.isVideoFirst
                  ? VideoSectionWidget(
                      videoUrl: widget.videoUrl,
                    )
                  : AboutUsVideoInfoWidget(
                      title: widget.title,
                      child: widget.child,
                    ),
            ),
          ],
        ),
      ],
    );
  }
}

class AboutUsVideoInfoWidget extends StatelessWidget {
  final String title;
  final Widget child;
  const AboutUsVideoInfoWidget({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextWidget(
            title,
            style: CustomTextStyles.text40_500,
          ),
          child,
        ],
      ),
    );
  }
}

class VideoSectionWidget extends StatelessWidget {
  final String videoUrl;
  const VideoSectionWidget({
    super.key,
    this.videoUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Container(
        height: 370,
        width: 550,
        decoration: BoxDecoration(
          color: AppColors.videoBgColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:writegpt_website/widgets/custom_flutter_bootstrap.dart';

class BootstrapContainerWidget extends StatelessWidget {
  ///A general widget for generating a bootstrap container with offset.Created to
  ///avoid writing long code each time we need a bootstrap container.
  const BootstrapContainerWidget({
    Key? key,
    required this.child,
    this.sizes = 'col-10 col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xl-8',
    this.offsetSizes = 'col-1 col-xs-0 col-sm-1 col-md-1 col-lg-1 col-xl-2',
    this.height,
  }) : super(key: key);

  final Widget child;
  final String offsetSizes;
  final String sizes;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CustomBootstrapContainer(
      fluid: false,
      children: [
        CustomBootstrapRow(
          height: height,
          children: [
            CustomBootstrapCol(
              sizes: offsetSizes,
              child: const SizedBox(),
            ),
            CustomBootstrapCol(
              sizes: sizes,
              child: child,
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/widgets/scaffold_body_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBodyWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 90),
          Text(
            'How does \n WriteGPT work?',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 90),
          const StackedContainer(),
        ],
      ),
    );
  }
}

class StackedContainer extends StatelessWidget {
  const StackedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const WrappedContainer(),
      ],
    );
  }
}

class WrappedContainer extends StatelessWidget {
  const WrappedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Refresh all your open tabs \n before using WriteGPT on them ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          WhiteButtons(
            text: '⌘',
          )
        ],
      ),
    );
  }
}

class WhiteButtons extends StatelessWidget {
  const WhiteButtons({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.keyboardHintButtonColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}

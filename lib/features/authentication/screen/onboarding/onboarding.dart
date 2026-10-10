import 'package:flutter/material.dart';
import 'package:untitled/features/authentication/screen/onboarding/widgets/onboarding_page.dart';
import 'package:untitled/features/authentication/screen/onboarding/widgets/onboarding_skip.dart';
import 'package:untitled/utils/constants/image_strings.dart';
import 'package:untitled/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TText.onBoardingTitle1,
                subTitle: TText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TText.onBoardingTitle2,
                subTitle: TText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TText.onBoardingTitle3,
                subTitle: TText.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip Button
          const OnBoardingSkip(),
        ],
      ),
    );
  }
}

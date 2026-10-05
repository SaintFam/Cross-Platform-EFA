import 'package:flutter/material.dart';
import 'package:untitled/utils/constants/image_strings.dart';
import 'package:untitled/utils/constants/sizes.dart';
import 'package:untitled/utils/constants/text_strings.dart';
import 'package:untitled/utils/helpers/helper_functions.dart';

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
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              width: THelperFunctions.screenWidth(context) * 0.8,
              height: THelperFunctions.screenHeight(context) * 0.5,
              image: AssetImage(image),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

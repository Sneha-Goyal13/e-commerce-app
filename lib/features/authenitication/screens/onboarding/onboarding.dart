import 'package:e_app/features/authenitication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_app/features/authenitication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_app/features/authenitication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_app/features/authenitication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers.onboarding/onboarding_controller.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: controller.pageController,
            onPageChanged:controller.updatePageIndicator ,
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          const OnBoardingSkip(),

          const OnBoardingDotNavigation(),

          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


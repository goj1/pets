import 'package:flutter/material.dart';
import 'package:pets/feature/home/ui/pages/home_page.dart';
import 'package:pets/feature/load/ui/pages/load_page.dart';
import 'package:pets/feature/login/ui/pages/login_page.dart';
import 'package:pets/feature/onboarding/ui/pages/onboarding_page.dart';
import 'package:pets/feature/pet/ui/pages/pet_page.dart';
import 'package:pets/infra/factories/navigation/pages.dart';

abstract class NavigatorPages {
  static Map<String, Widget> pagesMap = {
    Pages.load: const LoadPage(),
    Pages.onboarding: const OnboardingPage(),
    Pages.home: const HomePage(),
    Pages.login: const LoginPage(),
    Pages.pet: const PetPage(),
  };

  static Widget? getPage(String page) {
    return pagesMap[page];
  }
}

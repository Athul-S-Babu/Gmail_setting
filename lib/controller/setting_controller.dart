import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  final RxString selectedLanguage = 'English (US)'.obs;
  final RxList<String> languageOptions = [
    'English (US)',
    'Spanish',
    'French',
    'German',
    'Italian',
    'Portuguese',
    'Chinese',
    'Japanese',
    'Korean',
    'Russian',
    // Add more language options here
  ].obs;
  updateLanguage(newValue) {
    selectedLanguage.value = newValue;
  }

  final RxString selectedCountry = 'India'.obs;
  final RxList<String> countryOptions = [
    'United States',
    'Spain',
    'France',
    'Germany',
    'Italy',
    'Portugal',
    'China',
    'Japan',
    'South Korea',
    'Russia',
    'India',
    // Add more countries here
  ].obs;
  updateCountry(newValue) {
    selectedCountry.value = newValue;
  }

  final RxString selectedFontStyle = 'Sans Serif'.obs;
  final RxList<String> fontStyleOptions = [
    'Sans Serif',
    'Arial',
    'Times New Roman',
    'Helvetica',
    'Courier New',
    // Add more font styles here
  ].obs;

  updateFontStyle(newValue) {
    selectedFontStyle.value = newValue;
  }

  // Color? acceptedStarColor;
  // updateStar(starColor) {
  //   acceptedStarColor = starColor;
  //   update();
  // }

  final acceptedStarColors = <Color>[].obs;

  void updateStar(Color starColor) {
    acceptedStarColors.add(starColor);
  }
}

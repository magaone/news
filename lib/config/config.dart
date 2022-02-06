import 'package:flutter/material.dart';

class Config{

  
  final String appName = 'Kiez News';
  final String splashIcon = 'assets/images/news.png';
  final String supportEmail = 'h.arbeit2022@gmail.com';
  final String privacyPolicyUrl = 'https://kieznews.com/privacy-policy';
  final String ourWebsiteUrl = 'https://kieznews.com';
  final String iOSAppId = '000000';

  
  //social links
  static const String facebookPageUrl = 'https://www.facebook.com';
  static const String youtubeChannelUrl = 'https://www.youtube.com';
  static const String twitterUrl = 'https://twitter.com';
  
  //app theme color
  final Color appColor = Colors.deepOrange;



  //Intro images
  final String introImage1 = 'assets/images/news1.png';
  final String introImage2 = 'assets/images/news6.png';
  final String introImage3 = 'assets/images/news7.png';

  //animation files
  final String doneAsset = 'assets/animation_files/done.json';

  
  //Language Setup
  final List<String> languages = [
    'English',
    'Spanish',
    'Arabic'
  ];


  final List initialCategories = [
    'Entertainment',
    'Sports',
    'Politics',
    'Travel'
  ];
}
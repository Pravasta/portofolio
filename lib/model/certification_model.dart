import 'package:porto_mobile_app/core/constant/url_assets/url_assets.dart';

class CertificationModel {
  static const List<Map<String, dynamic>> listCertification = [
    {
      'title': 'IDCamp 2024 x Dicoding Intermediate Class',
      'time': 'January 2025 - March 2025',
      'description':
          'Developed a Restaurant App (A_Restro) with features including scheduled notifications, API consumption using State Management (Provider), HTTP for API integration, local storage with SQFLite, and thorough testing (Unit Testing, Integration Testing, Widget Testing). Implemented a scheduler using Flutter Local Notifications and WorkManager, and integrated Firebase for user creation.',
      'cover': UrlAssets.imagesCertificationOne,
    },
    {
      'title': 'SOLID Programming Principles Dicoding Class',
      'time': 'August 2022',
      'description':
          'Studied Object-Oriented Programming (OOP) concepts, OOP relationships, Software Design Principles, and S.O.L.I.D principles.',
      'cover': UrlAssets.imagesCertificationTwo,
    },
    {
      'title':
          'Flutter Class by Build With Angga – Travel App with Clean Architecture',
      'time': 'February 2024',
      'description':
          'Create application consume API with Clean Architecture (Travel App)',
      'cover': UrlAssets.imagesCertificationThree,
    }
  ];
}

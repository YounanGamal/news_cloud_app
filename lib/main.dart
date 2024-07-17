import 'package:flutter/material.dart';
import 'package:news_cloud_app/Style/mytheme.dart';
import 'package:news_cloud_app/UI/Home/home_screen.dart';
import 'package:news_cloud_app/UI/Splash/splash_screen.dart';

void main() {
  runApp(NewsCloudApp());
}

class NewsCloudApp extends StatelessWidget {
  const NewsCloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

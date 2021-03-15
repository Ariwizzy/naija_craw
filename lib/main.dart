import 'package:flutter/material.dart';
import 'package:naija_craw/Models/categoriesDatas.dart';
import 'package:naija_craw/Models/latestDatas.dart';
import 'package:naija_craw/Models/trendingDatas.dart';
import 'package:naija_craw/Screens/detailedScreen.dart';
import 'package:naija_craw/Screens/homeScreen.dart';
import 'package:naija_craw/Screens/landingPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx)=> CategoriesData()),
        ChangeNotifierProvider(create: (ctx)=> LatestData()),
        ChangeNotifierProvider(create: (ctx)=> TrendingData()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.grey[100],
            elevation: 0,
            textTheme: TextTheme(caption: TextStyle()),
            iconTheme: IconThemeData(color: Color(0xff1C2A36))
          ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:  LandingPage(),
        routes: {
          DetailedScreen.RouteName: (context)=> DetailedScreen(),
        },
      ),
    );
  }
}



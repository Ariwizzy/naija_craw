import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naija_craw/Models/categoriesDatas.dart';
import 'package:naija_craw/Models/latestDatas.dart';
import 'package:naija_craw/Models/trendingDatas.dart';
import 'package:naija_craw/Wigets/categoriesList.dart';
import 'package:naija_craw/Wigets/latestSubWidget.dart';
import 'package:naija_craw/Wigets/trendingSubWidget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<CategoriesData>(context).users;
    final latest = Provider.of<LatestData>(context).list;
    final trending = Provider.of<TrendingData>(context).list;
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 9),
          child: Image.asset("images/nc.png",fit: BoxFit.cover,),
        ),
        title: Text("NAIJACRAWL",style: GoogleFonts.poppins(
          color: Color(0xff000000),
          fontWeight: FontWeight.w300,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:13.0),
            child: Icon(Icons.menu,size: 29,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: mediaQuery.height,
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mediaQuery.height * 0.008,),
              Text("Categories",style: GoogleFonts.poppins(
                  color: Color(0xff9AA0A6),
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),),
                 SizedBox(height: mediaQuery.height * 0.008,),
                 Container(
                   height: mediaQuery.height * 0.110,
                  child:ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context,i){
                        return ChangeNotifierProvider.value(
                            value: categories[i],
                        child: CategoriesList(),
                        );
                      })
                ),
              Row(
                children: [
                  Text("Latest",style: GoogleFonts.poppins(
                      color: Color(0xff9AA0A6),
                      fontSize: 19,
                      fontWeight: FontWeight.w600
                  ),),
                  Spacer(),
                  Icon(Icons.arrow_back_ios,size: 22,),
                  Icon(Icons.arrow_forward_ios,size: 22,)
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.009,),
              Container(
                height: mediaQuery.height * 0.22,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (ctx,i){
                  return ChangeNotifierProvider.value(
                    value: latest[i],
                    child: LatestSubWidget(),
                  );
                }),
              ),
              SizedBox(height: mediaQuery.height * 0.012,),
              Row(
                children: [
                  Text("Trending",style: GoogleFonts.poppins(
                      color: Color(0xff9AA0A6),
                      fontSize: 19,
                      fontWeight: FontWeight.w500
                  ),),
                  Spacer(),
                  Text("See All",style: GoogleFonts.poppins(
                    color: Color(0xff9AA0A6),
                    fontSize: 17,
                  ),)
                ],
              ),
              SizedBox(height: mediaQuery.height * 0.012,),
              Container(
                height: 95 * trending.length.toDouble(),
                child: ListView.builder(
                  shrinkWrap: true,
                    semanticChildCount: trending.length,
                    addSemanticIndexes: true,
                    addAutomaticKeepAlives: true,
                    itemCount: trending.length,
                    itemBuilder: (context,i){
                  return ChangeNotifierProvider.value(
                    value: trending[i],
                    child: TrendingSubWidget(),
                  );
                }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

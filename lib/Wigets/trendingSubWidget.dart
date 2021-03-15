import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naija_craw/Models/trendingDatas.dart';
import 'package:naija_craw/Screens/detailedScreen.dart';
import 'package:provider/provider.dart';
class TrendingSubWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final trending = Provider.of<Trending>(context);
    return GestureDetector(
      onTap:(){
        Navigator.pushNamed(context, DetailedScreen.RouteName,arguments: trending.id);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey[300]
          ),
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(bottom: mediaQuery.height * 0.01),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width:mediaQuery.width * 0.35,
                  height: mediaQuery.height * 0.17,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.network(trending.imgUrl,fit: BoxFit.cover,)),
                ),
                Positioned(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xffc5b1b6),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(trending.tags),),top: 10,left: 10,),
              ],
            ),
            SizedBox(width: mediaQuery.width * 0.02,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(trending.title,
                    softWrap: true,overflow: TextOverflow.ellipsis,maxLines: 2,
                    style:  GoogleFonts.poppins(
                        color: Color(0xff35414D),
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.005,),
                  Text(trending.subtittle,softWrap: true,overflow: TextOverflow.ellipsis,maxLines: 2,
                    style:  GoogleFonts.poppins(
                        color: Color(0xff9AA0A6),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      SizedBox(width: 2,),
                      Icon(Icons.remove_red_eye_outlined,size: 22,color: Color(0xff35414D),),
                      SizedBox(width: 1.5,),
                      Text(trending.views),
                      Spacer(),
                      Icon(Icons.mode_comment_outlined,size: 21,),
                      SizedBox(width: 1,),
                      Text(trending.comment),
                      Spacer(),
                      Text(trending.time,),
                    ],
                  )
                ],
              ),
              width: 215,
              height: 150,
            ),
            Spacer(),
            Icon(Icons.more_vert,color: Color(0xff9AA0A6),size: 30,),
          ],
        ),
      ),
    );
  }
}

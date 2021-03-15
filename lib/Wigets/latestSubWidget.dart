import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naija_craw/Models/latestDatas.dart';
import 'package:provider/provider.dart';
class LatestSubWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final latest = Provider.of<Latest>(context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(latest.imgUrl)),
        ),
        // Positioned(
        //   child: Container(
        //     decoration: BoxDecoration(
        //         color: Colors.black38,
        //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
        //     ),
        //     height: mediaQuery.height * 0.11,
        //     width: mediaQuery.width * 0.71,
        //   ),
        //   bottom: 2,
        // ),
        Positioned(child: Container(
          padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.ondemand_video,color: Colors.white,)),left: 10,top: 7,),
        Positioned(
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Color(0xffc5b1b6),
                borderRadius: BorderRadius.circular(7)
            ),
            child: Text(latest.tag),),bottom: 85,left: 10,),
        Positioned(
          child: Container(
            padding:EdgeInsets.all(1) ,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10)
            ),
            child:Text(latest.text,style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 0.5,fontSize: 20),),
            alignment: Alignment.bottomRight,),
          bottom: 48,left: 10,
        ),
        Positioned(child: Text(latest.writerName,style: GoogleFonts.poppins(color: Color(0xffB3B8BC),fontWeight: FontWeight.w400,letterSpacing: 0.5,fontSize: 17),)
          ,left: 10,bottom: 28,),
        Positioned(child: Row(
          children: [
            Icon(Icons.remove_red_eye_outlined,color: Color(0xffE6E7E9),size: 27,),
            SizedBox(width: mediaQuery.width * 0.009,),
            Text(latest.views,style: GoogleFonts.poppins(color: Color(0xffE6E7E9),fontWeight: FontWeight.w400,letterSpacing: 0.5,fontSize: 17)),
          ],
        ),bottom: 4,left: 10,),
        Positioned(child: Text(latest.time,style: GoogleFonts.poppins(color: Color(0xffE6E7E9),fontWeight: FontWeight.w400,fontSize: 15))
          ,bottom: 4,right: 15,)
      ],
    );
  }
}

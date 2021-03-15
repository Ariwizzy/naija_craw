import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naija_craw/Models/trendingDatas.dart';
import 'package:provider/provider.dart';
class RelatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final trending = Provider.of<Trending>(context);
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(15)),
            child: Image.network(
              trending.imgUrl,
              height: mediaQuery.height * 0.17,
              width: mediaQuery.width * 0.583,
              fit: BoxFit.cover,
            )),
        Container(
          width: mediaQuery.width * 0.583,
          height: mediaQuery.height * 0.12,
          padding: EdgeInsets.symmetric(horizontal: 5),
          margin:EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
          ),
          child: Column(
            children: [
              Text(
                trending.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.3,
                    color: Color(0xff35414D)),
              ),
              Text(
                trending.subtittle,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.2,
                    color: Color(0xff9AA0A6)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

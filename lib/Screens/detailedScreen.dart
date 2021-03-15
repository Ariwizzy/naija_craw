import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naija_craw/Models/trendingDatas.dart';
import 'package:naija_craw/Wigets/relatedWidget.dart';
import 'package:naija_craw/Wigets/trendingSubWidget.dart';
import 'package:provider/provider.dart';

class DetailedScreen extends StatelessWidget {
  static const RouteName = "detailed-screen";
  Container _container(String time, IconData _icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffd3ebd6),
      ),
      child: Row(
        children: [
          Icon(
            _icon,
            color: Color(0xff797f85),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            time,
            style: GoogleFonts.poppins(
                color: Color(0xff797f85),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  RaisedButton _button(IconData _icon,String _text,Color _color){
    return RaisedButton.icon(
      elevation: 0.1,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      onPressed: () {},
      icon: Icon(_icon,color: _color,),
      label: Text(
       _text,
        style: GoogleFonts.poppins(
          fontSize: 16.5,
          fontWeight: FontWeight.w500,
          color: _color
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final productId = ModalRoute.of(context).settings.arguments as String;
    final trending = Provider.of<TrendingData>(context).findId(productId);
    final trendingList = Provider.of<TrendingData>(context).list;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(trending.imgUrl,
                    height: 400, width: double.infinity, fit: BoxFit.cover),
                Positioned(
                  left: 15,
                  top: 43,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.keyboard_backspace),
                    label: Text(
                      "Back",
                      style: GoogleFonts.poppins(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 43,
                    right: 17,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                    )),

                Container(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 35),
                  margin: EdgeInsets.only(top: mediaQuery.height * 0.40),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        trending.title,
                        style: GoogleFonts.notoSans(
                            color: Color(0xff1C2A36),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 0.2),
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey[500],
                      ),
                      Text(
                        trending.subtittle,
                        style: GoogleFonts.poppins(
                            color: Color(0xff80888f),
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            letterSpacing: 0.2),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.006,
                      ),
                      Row(
                        children: [
                          _container(trending.time, Icons.access_time_rounded),
                          Spacer(),
                          _container(trending.comment, Icons.chat_outlined),
                          Spacer(),
                          _container(trending.views, Icons.remove_red_eye_outlined),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5, top: mediaQuery.height * 0.008),
                        child: Text(
                          "Related",
                          style: GoogleFonts.poppins(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.2),
                        ),
                      ),
                      Container(
                        height: 4.5,
                        width: 86,
                        color: Color(0xff35c341),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.007,
                      ),
                      Container(
                        height: mediaQuery.height * 0.3,
                        child: ListView.builder(
                            itemCount: trendingList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,i){
                              return ChangeNotifierProvider.value(
                                value: trendingList[i],
                                child: RelatedWidget(),
                              );
                            }),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: 5, top: mediaQuery.height * 0.008),
                        child: Text(
                          "Comments",
                          style: GoogleFonts.poppins(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.2),
                        ),
                      ),
                      Container(
                        height: 4.5,
                        width: mediaQuery.width * 0.28,
                        color: Color(0xff35c341),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Write a Comment...",
                          suffixIcon: Icon(Icons.send)
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.015,),
                      Container(
                        padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(trending.imgUrl),
                                  radius: 20,
                                ),
                                SizedBox(width: mediaQuery.width * 0.02,),
                                Text("Ariwizzy Obinna",style: GoogleFonts.notoSans(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Spacer(),
                                Text("3 mins ago"),
                              ],
                            ),
                            Text(trending.subtittle,style: GoogleFonts.poppins(
                              color: Color(0xff9AA0A6),
                              fontWeight: FontWeight.w400,
                              fontSize: 17
                            ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,),
                            SizedBox(height: mediaQuery.height * 0.006,),
                            Row(
                              children: [
                                Text("0 replies",style: GoogleFonts.poppins(
                                  color: Color(0xff9AA0A6),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),),
                                Spacer(),
                                Icon(Icons.favorite_border,color: Colors.red,),
                                Text("Like",style: GoogleFonts.poppins(
                                  color: Colors.red,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),),
                                SizedBox(width: mediaQuery.width * 0.03,),
                                Icon(Icons.reply,color: Colors.blue,),
                                Text("Reply",style: GoogleFonts.poppins(
                                  color: Colors.blue,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.15,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: mediaQuery.height * 0.376),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _button(Icons.favorite_border, "Like",Color(0xffEB5757)),
                      _button(Icons.mode_comment_outlined, "Comment",Color(0xff2F80ED)),
                      _button(Icons.share, "Share",Color(0xff9B51E0)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

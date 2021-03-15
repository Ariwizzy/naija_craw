import 'package:flutter/material.dart';

class Latest with ChangeNotifier{
  final String text,writerName,views,time,tag,imgUrl;
  final IconData iconData;
  Latest({this.text,this.writerName, this.views, this.time, this.tag, this.iconData,this.imgUrl});
}
class LatestData with ChangeNotifier{
  List<Latest> _list = [
    Latest(text: "How To play Winning 11",iconData: Icons.sports_baseball,tag: "NEW",time: '1 hr ago',views: "512",writerName: "wizzy bobo",imgUrl: "https://gamespot1.cbsistatic.com/uploads/original/gamespot/images/2006/039/reviews/711827-928799_20060209_002.jpg"),
    Latest(text: "Wizkid And Rekado banks issue",iconData: Icons.music_note_outlined,tag: "NEW",time: '30 mins ago',views: "680",writerName: "wizzy bobo",imgUrl: "http://c.files.bbci.co.uk/12861/production/_114937857_reekadobanksandwizkid.png"),
    Latest(text: "What Will Single People Do On Valentine",iconData: Icons.favorite,tag: "NEW",time: '2 mins ago',views: "355",writerName: "wizzy bobo",imgUrl: "https://www.naijaloaded.com.ng/wp-content/uploads/2021/02/single.jpg"),
    Latest(text: "In Davido And Burna Boy Who Do You Love Most",iconData: Icons.music_note_outlined,tag: "HOT",time: '5 hrs ago',views: "5",writerName: "wizzy bobo",imgUrl: "https://www.naijaloaded.com.ng/wp-content/uploads/2020/09/David-burna.jpg"),
    Latest(text: "Who Want To Be A Millionaire",iconData: Icons.local_fire_department_outlined,tag: "NEW",time: '10 mins ago',views: "10",writerName: "wizzy bobo",imgUrl: "https://www.naijaloaded.com.ng/wp-content/uploads/2020/03/man-thinking-1.jpg"),
  ];
  List<Latest> get list{
    return [..._list];
  }
}

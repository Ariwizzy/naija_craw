import 'package:flutter/material.dart';
class Categories with ChangeNotifier{
  final String text;
  final Color color,iconColor;
  final IconData iconData;
  Categories({this.iconColor,this.text, this.color, this.iconData});
}
class CategoriesData with ChangeNotifier{
  List<Categories> _users =[
    Categories(color: Color(0xffc0dbe7),iconData: Icons.music_note_outlined,text: "Music",iconColor: Color(0xff63b0d2)),
    Categories(color: Color(0xffd0e5d2),iconData: Icons.ondemand_video_sharp,text: "Movies",iconColor: Color(0xff7fc886),),
    Categories(color: Color(0xffded4f5),iconData: Icons.sports_baseball,text: "Sports",iconColor: Color(0xffac8efd)),
    Categories(color: Color(0xffedb8d2),iconData: Icons.workspaces_filled,text: "Politics",iconColor: Color(0xffe76fa8)),
    Categories(color: Color(0xfff2f2f2),iconData: Icons.code,text: "Tech",iconColor: Color(0xff848251)),
    Categories(color: Color(0xffdbf0b1),iconData: Icons.menu_book_outlined,text: "Social",iconColor: Color(0xffaaea2b)),
  ];
  List<Categories> get users{
    return[..._users];
  }
}
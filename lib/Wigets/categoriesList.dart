import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naija_craw/Models/categoriesDatas.dart';
import 'package:provider/provider.dart';
class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<Categories>(context);
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CircleAvatar(
            backgroundColor: list.color,
            child: Icon(list.iconData,color: list.iconColor,size: 32,),
            radius: mediaQuery.height * 0.037,
          ),
        ),
        SizedBox(height: 1.5,),
        Text(list.text,style: GoogleFonts.poppins(
          fontSize: 16,
          color: Color(0xff35414D),
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5
        ),),
      ],
    );
  }
}

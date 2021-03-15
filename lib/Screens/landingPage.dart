import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
             fit: BoxFit.cover,
            image: NetworkImage("https://www.nme.com/wp-content/uploads/2020/11/Davido-1.jpg")
          )
        ),
        child: Column(
          children: [
            SizedBox(height: mediaQuery.height * 0.18,),
            Text("Welcome To...",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 17
            ),),
            SizedBox(height: mediaQuery.height * 0.01,),
            CircleAvatar(
              radius: 58,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/nc.png",),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff35c341),
                borderRadius: BorderRadius.circular(25)
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: mediaQuery.height *0.0155),
              margin: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.13),
              child: Center(child: Text("Create Account",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 17
              ),)),
            ),
            SizedBox(height: mediaQuery.height * 0.005,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffe5f8e6),
                  borderRadius: BorderRadius.circular(25)
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: mediaQuery.height *0.0155),
              margin: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.13),
              child: Center(child: Text("Login",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff33C441),
                  fontSize: 17
              ),)),
            ),
            SizedBox(height: mediaQuery.height * 0.03,),
            Text("Skip For Now",style: GoogleFonts.poppins(
              color: Color(0xff33C441)
            ),),
            SizedBox(height: mediaQuery.height * 0.1,),
          ],
        ),
      ),
    );
  }
}

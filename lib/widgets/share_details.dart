import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShareTheDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Container(
                //  color: Colors.amber,
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf2d955),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  padding: EdgeInsets.all(3.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image(
                        height: 30.0,
                        width: 30.0,
                        image: AssetImage(
                            "asset/frnds.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Share the details with friends",
                    style: GoogleFonts.notoSans(
                        fontSize: 13.0, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "and family",
                    style: GoogleFonts.notoSans(
                        fontSize: 13.0, fontWeight: FontWeight.w600),
                  ),
                  
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Share",
            style:GoogleFonts.raleway(
              color: Colors.red, fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeedAndSupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  padding: EdgeInsets.all(3.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image(
                        height: 40.0,
                        width: 40.0,
                        image: AssetImage(
                            "asset/qst.png"),
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
                    "Need Support?",
                    style: GoogleFonts.notoSans(
                        fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Chat with us if needed',
                        style: GoogleFonts.lato(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            textStyle: TextStyle(
                              color: Colors.black,
                            )),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Chat",
            style:GoogleFonts.raleway(
              color: Colors.red, fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}

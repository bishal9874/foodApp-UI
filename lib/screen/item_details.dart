import 'package:Meat_Delivery/screen/catagory_list.dart';
import 'package:Meat_Delivery/widgets/your_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';

class Itemdetails extends StatefulWidget {
  final imPath, foodName, price, netwt, herotag;

  Itemdetails(
      {this.foodName, this.imPath, this.price, this.netwt, this.herotag});

  @override
  _ItemdetailsState createState() => _ItemdetailsState();
}

class _ItemdetailsState extends State<Itemdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              child: Hero(
                tag: widget.herotag,
                child: Container(
                  height: 340.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(widget.imPath),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => Catagory(),
                          ));
                        },
                        icon: Icon(Icons.arrow_back_ios_outlined),
                      ),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 80.0,
                        color: Colors.transparent,
                      ),
                      Container(
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Colors.grey[300], shape: BoxShape.circle),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.redAccent,
                              size: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.8,
              minChildSize: 0.7,
              builder: (context, controller) {
                return SingleChildScrollView(
                  child: Container(
                      height: 1000,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: ListView(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 5.0, left: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.foodName.toString(),
                                  style: GoogleFonts.raleway(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      SmoothStarRating(
                                          allowHalfRating: true,
                                          onRated: (v) {},
                                          starCount: 5,
                                          // rating: rating,
                                          size: 20.0,
                                          isReadOnly: true,
                                          filledIconData: Icons.blur_off,
                                          halfFilledIconData: Icons.blur_on,
                                          color: Colors.red,
                                          borderColor: Colors.red,
                                          spacing: 0.0),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text("67 votes")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image(
                                          height: 25.0,
                                          image: AssetImage(
                                              "asset/Untitled-1 copy.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                       " No.of Pieces 5-7",
                                        style: TextStyle(fontSize: 15.0),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        child: Image(
                                          height: 25.0,
                                          image: AssetImage(
                                              "asset/download.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        "Net wt. " +
                                            widget.netwt.toString() +
                                            " gms",
                                        style: TextStyle(fontSize: 15.0),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Instructions",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text("For that craving to bite into something chunky and juicy. Dark, tender meat with bone the lower leg of the chicken.",
                                  style: GoogleFonts.raleway(
                                    fontSize: 15.0
                                  ),
                                )

                              ],
                            ),
                          ),
                          YourBox(),
                        ],
                      )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

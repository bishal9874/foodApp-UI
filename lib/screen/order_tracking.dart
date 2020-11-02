import 'package:Meat_Delivery/screen/item_details.dart';
import 'package:Meat_Delivery/widgets/share_details.dart';
import 'package:Meat_Delivery/widgets/support_help.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderTracking extends StatefulWidget {
  @override
  _OrderTrackingState createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  String get name => "Chicken DrumStick";
  var quantity = 1;
  var price = 90.0;
  var price2 = 84.0;
  var total = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    child: Image(
                      height: 20.0,
                      image: AssetImage("asset/marathonmap.jpg"),
                      fit: BoxFit.cover,
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
                                builder: (context) => Itemdetails(),
                              ));
                            },
                            icon: Icon(Icons.arrow_back_ios_outlined),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 150.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    height: 1800,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF5e75d1)),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Container(
                                      padding: EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Check your order every time",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Always check the order bill and',
                                            style: GoogleFonts.notoSans(
                                                fontSize: 12.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "click order recieved button.",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 12.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      )),
                                ),
                                Container(
                                  //padding: EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    // borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      height: 80.0,
                                      image: AssetImage(
                                          "asset/02-Billing-and-Invoice-Generation.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////
                        ///////////////////////////////

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 60.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 1.0,
                                          spreadRadius: 1.0,
                                          offset: Offset(0.0, 2.3),
                                        )
                                      ],
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(3.0),
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          child: Image(
                                            height: 80.0,
                                            width: 80.0,
                                            image: AssetImage(
                                                "asset/7766bd1e3b9e8de0acce9abd5a47a6f7.jpg"),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Delivary Boy",
                                        style: GoogleFonts.notoSans(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Torsten Paulsson',
                                            style: GoogleFonts.lato(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
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
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.redAccent,
                                size: 30.0,
                              ),
                            ),
                          ],
                        ),

                        ////
                        ///
                        ///
                        ///
                        ///
                        ///
                        ///
                        ///
                        Container(
                          padding: EdgeInsets.all(5.0),
                          height: 270.0,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 15.0, right: 15.0),
                                child: Container(
                                    padding: EdgeInsets.only(left: 10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Any pickup notes?',
                                        hintStyle: GoogleFonts.notoSans(
                                          fontSize: 14.0,
                                        ),
                                        border: InputBorder.none,
                                        fillColor: Colors.grey.withOpacity(.9),
                                      ),
                                    )),
                              ),
                              ////
                              ///
                              ///
                              ///
                              ///
                              ///
                              ///
                              ///
                              ///
                              SizedBox(
                                height: 20.0,
                              ),

                              NeedAndSupport(),
                              ShareTheDetails(),
                            ],
                          ),
                        ),

                        // order recieved

                        ///
                        ///
                        ///
                        ///
                        ///
                        ///
                        ///
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200]),
                          child: InkWell(
                            onTap: () {
                              // Navigator.of(context)
                              //     .push(MaterialPageRoute(builder: (context) => AddCart()));
                            },
                            child: Container(
                              height: 60.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.redAccent),
                              child: Row(children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 110.0, right: 50.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Order Recieved",
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0,
                                            color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

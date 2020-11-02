import 'package:Meat_Delivery/screen/item_details.dart';
import 'package:Meat_Delivery/screen/order_tracking.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCart extends StatefulWidget {
  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      height: 80.0,
                                      width: 80.0,
                                      image: AssetImage(
                                          "asset/delish-190808-baked-drumsticks-0185-landscape-pf-1567089281.jpg"),
                                      fit: BoxFit.cover,
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
                                        name,
                                        style: GoogleFonts.notoSans(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '\$' +
                                                ((price++) * quantity)
                                                    .toString(),
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
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                    adjustQuantity("MINUS");
                                  },
                                  icon: Icon(
                                    Icons.indeterminate_check_box,
                                    color: Colors.redAccent,
                                    size: 30.0,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    quantity.toString(),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 22.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    adjustQuantity("PLUS");
                                  },
                                  icon: Icon(
                                    Icons.add_box,
                                    color: Colors.redAccent,
                                    size: 30.0,
                                  ),
                                ),
                              ],
                            ))
                          ],
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      height: 80.0,
                                      width: 80.0,
                                      image: AssetImage(
                                          "asset/1568735450321.jpeg"),
                                      fit: BoxFit.cover,
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
                                        "Chicken Breast",
                                        style: GoogleFonts.notoSans(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '\$' +
                                                ((price2++) * quantity)
                                                    .toString(),
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
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                    adjustQuantity("MINUS");
                                  },
                                  icon: Icon(
                                    Icons.indeterminate_check_box,
                                    color: Colors.redAccent,
                                    size: 30.0,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    quantity.toString(),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 22.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    adjustQuantity("PLUS");
                                  },
                                  icon: Icon(
                                    Icons.add_box,
                                    color: Colors.redAccent,
                                    size: 30.0,
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.bento_rounded,
                                  color: Colors.redAccent,
                                ),
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, top: 15.0),
                                hintText: "Add PromoCode",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide:
                                      BorderSide(color: Colors.redAccent),
                                  //borderSide: BorderSide(color: Colors.red)
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                              //height: 30.0,
                              // padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                "Payment",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0),
                              )),
                        ),
                        ////payment card
                        ///
                        ///
                        ///
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF334cb0)),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.all(
                                       10.0),
                                  child: Container(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance",
                                        style: GoogleFonts.notoSans(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      
                                      Text(
                                        '\$2000',
                                        style: GoogleFonts.notoSans(
                                            fontSize: 25.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                       Text(
                                        "xxxx xxxx xxxx xxxx 3788",
                                        style: GoogleFonts.notoSans(
                                            fontSize: 15.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  )),
                                ),
                                SizedBox(
                                  width: .0,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top:50.0, left: 100.0),
                                  child: Text("VISA",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white
                                  )
                                  )
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 20.0,
                        // ),

                        //place order

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
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => OrderTracking()));
                              },
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.redAccent),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              quantity.toString() + " ITEM",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 15.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  '\$328', //(int.parse(_totalCal(price, price2))).toString(),
                                                  // (int.parse(widget.price) *
                                                  //         quantity)
                                                  //     .toString(),
                                                  style: GoogleFonts.notoSans(
                                                      fontSize: 22.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Text(
                                                  "Incl taxes",
                                                  style: GoogleFonts.raleway(
                                                      color: Colors.white,
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Text(
                                                "Place Order",
                                                style: GoogleFonts.raleway(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20.0,
                                                    color: Colors.white),
                                              ),
                                              Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                                size: 22.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            ))
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

  adjustQuantity(pressed) {
    switch (pressed) {
      case 'PLUS':
        setState(() {
          quantity += 1;
        });
        return;
      case 'MINUS':
        setState(() {
          if (quantity != 0) {
            quantity -= 1;
          }
        });
        return;
    }
  }

  // _totalCal(var pr , var pr2) {
  //   total = pr + pr2;
  //   return  total;
  // }
}

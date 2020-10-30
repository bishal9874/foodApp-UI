import 'package:Meat_Delivery/screen/item_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypesOfSteaks extends StatefulWidget {
  @override
  _TypesOfSteaks createState() => _TypesOfSteaks();
}

class _TypesOfSteaks extends State<TypesOfSteaks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal:15.0 ),
          child:  Text("16 types of Steaks",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
        ),
        SizedBox(height: 10.0,),
         _itemBuilder(
           'Chicken Drumstick', "540", "120", "asset/delish-190808-baked-drumsticks-0185-landscape-pf-1567089281.jpg"),
        SizedBox(height: 10.0,),
         _itemBuilder("Chicken Curry Cut", "340", "90", "asset/curyy-cut_COMPRESSED.png"),
         SizedBox(height: 10.0,),
         _itemBuilder("Chicken Breast", "250", "84", "asset/AdobeStock_200759507.jpeg")
               
               
      ],
    );
  }
  _itemBuilder(String name , String netWet , String price , String imgUrl ){
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){
           Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Itemdetails(herotag: name, foodName: name, price: price, imPath: imgUrl, netwt: netWet,)
          ));

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            height: 80.0,
                            image: AssetImage(imgUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: GoogleFonts.notoSans(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      Text(
                        "Net wt."+netWet+" gms",
                        style: GoogleFonts.notoSans(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                       SizedBox(height: 10.0,),
                      Row(
                        children: <Widget>[
                          Text(
                            '\$' + price,
                            style: GoogleFonts.lato(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                textStyle: TextStyle(color: Color(0xFFF68D7F))),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            FloatingActionButton(
              heroTag: name,
              mini: true,
              onPressed: (){
                debugPrint("ADD item");
              },
              child: Center(
                child: Icon(Icons.add, color: Colors.white),
              ),
              backgroundColor: Color(0xFFF68D7F),

            )

          ],
        ),
      )
    );
  }
}




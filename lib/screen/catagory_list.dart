import 'package:Meat_Delivery/widgets/types_Of_steak.dart';
import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcbe03),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
            onPressed: () {},
          ),
          title: Text(
            "Steak",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: ListView(
          children: <Widget>[
            Container(
                height: 100.0,
                width: 40.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildListItem(
                        "Packaging", "Temper Proof", "asset/packing.png"),
                    _buildListItem(
                        "Delivery", "Express 2 Hours", "asset/delvary2.jpg")
                  ],
                )),
            SizedBox(
              height: 20.0,
            ),
            TypesOfSteaks(),
          ],
        ),
      ),
    );
  }

  _buildListItem(String delinfo, String ddetails, String imgPath) {
    return Container(
        padding: EdgeInsets.all(15.0),
        child: InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      //width: 200.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          // Container(
                          //    height:80.0,
                          //    width: 65.0,
                          //     padding: EdgeInsets.all(15.0),
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(20.0),
                          //         color: Color(0xFFb7e1ed)
                          //       ),
                          //     child:  Image.asset(imgPath,height: 70.0,width: 70.0 ,),
                          // ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              height: 70.0,
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                delinfo,
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Text(
                                ddetails,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

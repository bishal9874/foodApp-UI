import 'package:flutter/material.dart';

class YourBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal:15.0 ),
          child:  Text("What's in your Box",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _boxContain("Net weight of", "prepped meat only ", "asset/foot-scale.jpg"),
              _boxContain("Temperature", "Between 4 deg C -8", "asset/basal-body-temperature.jpg")
            ],
          ),
        )
       
               
      ],
    );
  }
  _boxContain(String netW, String tem, String imgPath) {
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
                          color: Colors.grey[300],
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              height: 55.0,
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
                                netW,
                                style: TextStyle(fontSize: 17.0),
                              ),
                              Text(
                                tem,
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 17.0),
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
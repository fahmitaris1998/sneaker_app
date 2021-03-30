import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DetailSepatu extends StatefulWidget {
  @override
  _DetailSepatuState createState() => _DetailSepatuState();
}

class _DetailSepatuState extends State<DetailSepatu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children:[ Container(
                height: MediaQuery.of(context).size.height*0.55,
                width: double.infinity,
                color: Color.fromRGBO(234,237,248,1),
                child: Swiper(
                  itemCount: 5,
                  itemBuilder: (context,index){
                    var c = index +1;
                    return Image(image: ExactAssetImage("assets/images/hero"+c.toString()+".png"));
                  },
                  viewportFraction: 0.8,
                  scale: 0.5,
                  pagination: SwiperPagination(
                    margin: EdgeInsets.only(bottom: 20.0),
                    alignment: Alignment.bottomCenter,
                    builder: new DotSwiperPaginationBuilder(
                        size: 10.0,
                        activeSize: 10.0,
                        color: Color.fromRGBO(208,207,255,0.6),
                        activeColor: Color.fromRGBO(208,207,255,1)),),
                ),
              ),
                Positioned(
                  left: 32.0,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios)
                          ],
                  ),
                      ),
                    )
                ),
                Positioned.fill(
                  top: 33.0,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text("KICKSFINDER",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600,fontFamily: 'BSD',color: Color.fromRGBO(45,64,89,1)),))
                )
              ]
            ),
            Column(
              children: [

            ],),
            Container(
              height: 100.0,
              color: Colors.red,
              child: ListView(
                children: [
                  Container(
                    child: Row(
                      children: [
                    Expanded(
                      child: CustomCheckBoxGroup(
                      buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.red,
                        unSelectedColor: Colors.orange,
                        textStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: [
                  "M",
                  "T",
                  "W",
                  "T",
                  "F",
                  "S",
                  "S",
                ],
                buttonValuesList: [
                  "Monday",
                  "Tuesday",
                  "Wednesday",
                  "Thursday",
                  "Friday",
                  "Saturday",
                  "Sunday",
                ],
                checkBoxButtonValues: (values) {
                  print(values);
                },
                spacing: 0,

                horizontal: false,
                enableButtonWrap: false,
                width: 40,
                absoluteZeroSpacing: false,
                selectedColor: Theme.of(context).accentColor,
                padding: 10,
              ),
                    )
              ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

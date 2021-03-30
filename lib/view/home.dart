import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneakers_store/data/data.dart';
import 'package:sneakers_store/view/detail.dart';
import 'package:sneakers_store/widget/cardhome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Color.fromRGBO(249,249,249,1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0,left: 32.0,right: 32.0),
                child: Container(
                  width: double.infinity,
                  height: 48.0,
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 0,
                          child: Text("KICKSFINDER",style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.w600,fontFamily: 'BSD',color: Color.fromRGBO(45,64,89,1)),)),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 43.0,
                          width: 35.0,

                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                  child: Image(image: ExactAssetImage("assets/images/cart.png"))),
                              Positioned(
                                right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle
                                    ),
                                    child: Text("1",style: TextStyle(color: Colors.white,fontFamily: "EXO",fontWeight: FontWeight.w500,fontSize: 13.0),),
                                  )
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailSepatu()));
              },
              child: Container(
                height: 284.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 32.0,bottom: 24.0,left: 32.0,right: 32.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(97,130,216,1),
                      Color.fromRGBO(70,93,152,1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,top: 7.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("30% Off",style: TextStyle(fontSize: 48.0,fontWeight: FontWeight.w700,fontFamily: "EXO",color: Colors.white),),
                          Text("For Nike products",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400,fontFamily: "EXO",color: Colors.white),)
                        ],
                      ),
                    ),
                    Positioned.fill(
                      left: 15.0,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image(image: ExactAssetImage("assets/images/nike.png"),))
                    ),
                    Positioned.fill(
                      left: 45,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Image(image: ExactAssetImage("assets/images/sale1.png"),))
                    ),
                    Positioned.fill(
                        right: 10.0,
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image(image: ExactAssetImage("assets/images/sale2.png"),))
                    ),
                    Positioned.fill(
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image(image: ExactAssetImage("assets/images/sale3.png"),))
                    ),
                    Positioned.fill(
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image(image: ExactAssetImage("assets/images/sepatu.png"),))
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text("HOT PRODUCTS",style: TextStyle(fontFamily: "EXO",fontSize: 24.0,fontWeight: FontWeight.w600,color: Color.fromRGBO(45,64,89,1)),),
            ),
        Container(
          height: 260.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 16.0),
                child: ListView.builder(
                    physics: BouncingScrollPhysics() ,
                    scrollDirection: Axis.horizontal,
                    itemCount: listsepatuhome.length,
                    itemBuilder: (_,index){
                      var arr = [];
                      arr.add("mantap");
                      arr.add("mantap");
                      arr.add("mantap");
                      arr.add("mantap");
                      print(arr);
                      return Cardhome(
                        index: index,
                        logo: listsepatuhome[index]["logo"],
                        sale: listsepatuhome[index]["sale"],
                        image: listsepatuhome[index]["image"],
                        name: listsepatuhome[index]["name"],
                        scname: listsepatuhome[index]["scname"],
                        hargapalsu: listsepatuhome[index]["hargapalsu"],
                        hargaasli: listsepatuhome[index]["hargaasli"],
                        color: listsepatuhome[index]["color"],
                      );
                    }
                    ),
              ),


          ],
        ),
      ),
    );
  }
}

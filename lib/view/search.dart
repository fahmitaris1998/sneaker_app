import 'package:flutter/material.dart';
import 'package:sneakers_store/data/data.dart';
import 'package:sneakers_store/widget/cardsearch.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return  Column(
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
            Padding(
              padding: const EdgeInsets.only(left: 32.0,right: 32.0,top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 51.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromRGBO(234,237,248,1)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 18.0,),
                          Icon(Icons.search,size: 14.0,color: Color.fromRGBO(45,64,89,1),),
                          SizedBox(width: 12.0,),
                          Text("Search sneakers running shoes",style: TextStyle(fontSize: 11.0,fontWeight: FontWeight.w400,color: Color.fromRGBO(45,64,89,1)),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 55.0,
                    height: 51.0,
                    margin: EdgeInsets.only(left: 11.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromRGBO(45,64,89,1)
                    ),
                    child: Center(
                      child: Image(image: ExactAssetImage("assets/images/filter.png"),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: DefaultTabController(
                    length: 5,
                    child: Scaffold(
                      appBar: AppBar(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          title: TabBar(
                                physics: BouncingScrollPhysics(),
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Color.fromRGBO(120,255,226,1)
                                ),

                                // isScrollable: true,
                                tabs: [
                                  Tab(child: Container(
                                    child: Image(image: ExactAssetImage("assets/images/adidas.png")),
                                  )
                                  ),
                                  Tab(child: Image(image: ExactAssetImage("assets/images/nike1.png")),),
                                  Tab(child: Image(image: ExactAssetImage("assets/images/puma.png")),),
                                  Tab(child: Image(image: ExactAssetImage("assets/images/vans.png")),),
                                  Tab(child: Image(image: ExactAssetImage("assets/images/reebook.png")),),
                                ],
                              ),
                        ),
                      body: TabBarView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 17.0,right: 32.0) ,
                            child: ListView.builder(
                                physics: BouncingScrollPhysics() ,
                                itemCount: 2,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context,index){
                                  return CardSearch(
                                    idx: index,
                                    color: listsepatusearch[index]["color"],
                                    image: listsepatusearch[index]["image"],
                                    name: listsepatusearch[index]["name"],
                                    namecolor: listsepatusearch[index]["colorname"],
                                    price: listsepatusearch[index]["price"],
                                  );
                                }
                            ) ,
                          ),
                          Center(
                            child: Text("masdas"),
                          ),
                          Center(
                            child: Text("masdas"),
                          ),Center(
                            child: Text("masdas"),
                          ),
                          Center(
                            child: Text("masdas"),
                          ),

                        ],
                      ),
                    )),
              ),
            )
          ],
    );
  }
}

import 'package:flutter/material.dart';

class CardSearch extends StatelessWidget {
  final int idx;
  final Color color;
  final String image;
  final String name;
  final String namecolor;
  final String price;

  const CardSearch({Key key, this.color, this.image, this.name, this.namecolor, this.price, this.idx}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      margin: EdgeInsets.only(bottom: 16.0,top: idx==0?28:0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Image(image: ExactAssetImage(image)),
          Text(name,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w500,fontFamily: "EXO",color: Color.fromRGBO(45,64,89,1)),),
          SizedBox(height: 5.0,),
          Text(namecolor,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,fontFamily: "EXO",color: Color.fromRGBO(45,64,89,1)),),
          SizedBox(height: 8.0,),
          Text(price,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600,fontFamily: "EXO",color: Color.fromRGBO(45,64,89,1)),),

        ],
      ),
    );
  }
}

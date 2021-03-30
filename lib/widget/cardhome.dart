import 'package:flutter/material.dart';

class Cardhome extends StatelessWidget {
  final int index;
  final String logo;
  final String sale;
  final String image;
  final String name;
  final String scname;
  final String hargapalsu;
  final String hargaasli;
  final Color color;

  const Cardhome({Key key, this.index, this.logo, this.sale, this.image, this.name, this.scname, this.hargapalsu, this.hargaasli, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:index==0?32:16,right: index==2?16:0 ),
      width: 147.0,
      height: 180.0,
      decoration: BoxDecoration(
          color: color,
          borderRadius:BorderRadius.circular(10.0)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 12.0,right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: ExactAssetImage(logo)),
                sale!=""?Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 2.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245,78,78,1),
                    borderRadius: BorderRadius.circular(2.0)
                  ),
                  child: Text(sale,style: TextStyle(fontWeight: FontWeight.w500,fontFamily: "EXO",fontSize: 10.0,color: Colors.white),),):Container(),
              ],
            ),
          ),
          SizedBox(height:11.0,),
          Image(image: ExactAssetImage(image)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Text(name,style: TextStyle(height:1.2,fontSize: 14.0,color: Color.fromRGBO(45,64,89,1),fontFamily: "EXO",fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 4.0,),
          Text(scname,style: TextStyle(fontSize: 10.0,color: Color.fromRGBO(45,64,89,1),fontFamily: "EXO",fontWeight: FontWeight.w400),),
          Expanded(child: SizedBox()),
          hargapalsu!=""?
          Text(hargapalsu,style: TextStyle(fontSize: 12.0,color: Color.fromRGBO(45,64,89,1),fontFamily: "EXO",fontWeight: FontWeight.w400)) : Text(""),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(hargaasli,style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(45,64,89,1),fontFamily: "EXO",fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }
}

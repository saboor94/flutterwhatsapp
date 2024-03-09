import 'package:flutter/material.dart';

class HomePageListDiscount {
  String? discount;
  String? discountcode;
  dynamic icontext;

  HomePageListDiscount(discount, discountcode, icontext) {
    this.discount = discount;
    this.discountcode = discountcode;
    this.icontext = icontext;
  }
}

List dicount = [
  HomePageListDiscount(' 50% Off\n On everything today',
      ' With Code:Discounttoday', 'Get Discount'),
  HomePageListDiscount(
      ' 70% Off\n On Electronics', ' With code:DiscElectronics', 'Get Discount')
];
boxdecorationfun() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAu9MiHQpg03-NbrJArmpQskLwlML1f1n6ag&usqp=CAU'),
          fit: BoxFit.cover));
}
boxdec(image){
 return BoxDecoration(
     // borderRadius: BorderRadius.circular(6),
      image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover));
}

discountColumn(index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          margin: EdgeInsets.only(left: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 30,
            ),
            Text(
              dicount[index].discount,style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(dicount[index].discountcode,style: TextStyle(fontWeight: FontWeight.bold,fontSize:10 ),),
            SizedBox(
              height: 30,
            )
          ])),
      Container(
        margin: EdgeInsets.only(left: 10),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Text(
              dicount[index].icontext,
              style: TextStyle(color: Colors.white),
            )),
      )
    ],
  );
}
import 'package:application/bottomna.dart';
import 'package:application/discount.dart';
import 'package:application/login.dart';
import 'package:application/prodcut.dart';
import 'package:application/signup.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottom(context),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
              iconSize: 30,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: 200,
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: dicount.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Container(
                            decoration: boxdecorationfun(),
                            child: discountColumn(index)));
                  }),
            ),
            ListTile(
              title: Text(
                'Products',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                'View All',
                style: TextStyle(fontSize: 15),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                // scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: boxdec(products[index].productimage),
                            height: 120,width: 300,
                            child:IconButton(icon:Icon(Icons.shopping_cart) ,onPressed: (){},alignment: Alignment.topRight,)
                          ),
                          SizedBox(height: 5,),
                          Center(child: Text('The ${products[index].productname}',style: TextStyle(fontWeight: FontWeight.bold),)),
                          Center(child: Text('Price:${products[index].productprice}'),),
                          
                          
                        ],
                      ),
                    ),
                  );
                }),
          ],
        )));
  }
}

iconbutton(icon, context, Screen) {
  return IconButton(
    //alignment: Alignment.bottomRight,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screen));
      },
      icon: Icon(
        icon,
        color: Colors.black,
      ));
}

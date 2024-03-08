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

        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels:false,
          showUnselectedLabels:false,
          
          backgroundColor: Colors.blue,
          selectedLabelStyle: TextStyle(fontSize: 0),
          unselectedLabelStyle: TextStyle(fontSize: 0),
          items: [
            BottomNavigationBarItem(
                icon:  Icon(Icons.home,color:Colors.black,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person,color:Colors.black,),label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart,color:Colors.black),label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications,color:Colors.black),label: '')
          ],
        ),
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
              margin: EdgeInsets.only(left: 10),
              height: 200,
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://t4.ftcdn.net/jpg/04/61/47/03/360_F_461470323_6TMQSkCCs9XQoTtyer8VCsFypxwRiDGU.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'hello',
                          ),
                          Text('how r u')
                        ],
                      ),
                    ));
                  }),
            ),
            ListTile(
              title: Text('New Arrivals'),
              trailing: Text('View All'),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 300,
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.grey,
                    );
                  }),
            ),
          ],
        )));
  }
}

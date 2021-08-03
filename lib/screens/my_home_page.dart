import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/9f/bc/57/hunza-serena-inn.jpg?w=900&h=-1&s=1",
    "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_1024,h_683/https://www.ajktours.com/wp-content/uploads/2020/01/Luxus-Hunza-Resort-Featured.jpg",
    "https://i.pinimg.com/originals/83/ae/7c/83ae7cc829952fb68a072ebba8e5b2a1.jpg",
    "https://imagevars.gulfnews.com/2019/07/19/190719-valey_16c0a39e55c_medium.jpg",
    "https://www.geoex.com/app/uploads/2019/07/pakistan-hunza-husseini-bridge.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 3.0,
        mainAxisSpacing: 3.0,
        padding: EdgeInsets.all(3.0),
        shrinkWrap: true,
        children: List.generate(data.length, (index) {
          return Image.network(data[index]);
        }),
      ),
      appBar: AppBar(
        title: Text("Flutter GridView Demo"),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
        child: BottomNavigationBar(
          backgroundColor: Colors.cyan.shade900,
          showSelectedLabels: true,
          selectedItemColor: Colors.cyan.shade800,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.cyan.shade900,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Colors.cyan.shade900,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
              backgroundColor: Colors.cyan.shade900,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: '',
              backgroundColor: Colors.cyan.shade900,
            ),
          ],
        ),
      ),
    );
  }
}

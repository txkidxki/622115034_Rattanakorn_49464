import 'dart:convert';
import 'package:youtube_app/data.dart';
import 'package:youtube_app/pages/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: new Image.asset(
          "assets/yt_logo.png",
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notification_add_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 40.0,
            icon: CircleAvatar(
              foregroundImage: NetworkImage(currentUser.profileImageUrl),
            ),
            onPressed: () {},
          ),
        ],
      ),
      
      body: ListView(
        
        children: [
          
          
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset('assets/solo.jpg'),
                  ListTile(
                    leading: new Image.asset("assets/logo.png",),
                    title: const Text('JENNIE - SOLO M/V'),
                    subtitle: Text(
                      'BLACKPINK • 797M views • 3 years ago',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                        ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset('assets/duudu.jpg'),
                  ListTile(
                     leading: new Image.asset(
                       "assets/logo.png",
                       ),
                    title: const Text('‘뚜두뚜두 (DDU-DU DDU-DU)’ M/V'),
                    subtitle: Text(
                      'BLACKPINK • 1.7B views • 3 years ago',
                      style: TextStyle(color: Colors.grey,
                      fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset('assets/gone.jpg'),
                  ListTile(
                     leading: new Image.asset(
                       "assets/logo.png",
                       ),
                    title: const Text('ROSÉ - Gone M/V'),
                    subtitle: Text(
                      'BLACKPINK • 158M views • 8 months ago',
                      style: TextStyle(color: Colors.grey,
                      fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset('assets/lalisa.jpg'),
                  ListTile(
                     leading: new Image.asset(
                       "assets/logo.png",
                       ),
                    title: const Text('LISA - LALISA M/V'),
                    subtitle: Text(
                      'BLACKPINK • 381M views • 3 months ago',
                      style: TextStyle(color: Colors.grey,
                      fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
  

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outlined),
            activeIcon: Icon(Icons.add_circle),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: 'Library',
          ),
        ],
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String img_url) {
    return Container(
      // margin: EdgeInsets.only(top: 20),
      // padding: EdgeInsets.all(20),
      // height: 150,
      decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(img_url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.2), BlendMode.darken))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

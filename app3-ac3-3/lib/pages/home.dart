import 'dart:convert';

import 'package:flutter/material.dart';

import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Anime of today"),
          backgroundColor: Colors.yellow[600],
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: FutureBuilder(
              builder: (context, snapshot) {
                var data = json.decode(snapshot.data.toString());
                return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return MyBox(data[index]['title'],
                          data[index]['subtitle'], data[index]['img_url'], data[index]['detail']);
                    },
                    itemCount: data.length);
              },
              future:
                  DefaultAssetBundle.of(context).loadString('assets/data.json'),
            )));
  }

  Widget MyBox(String title, String subtitle, String img_url, String detail) {
    var v1, v2, v3, v4;
    v1 = title;
    v2 = subtitle;
    v3 = img_url;
    v4 = detail;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: 150,
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
          TextButton(
              onPressed: () {
                print("next page >>");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsPage(v1, v2, v3, v4)));
              },
              child: Text("read more")),
        ],
      ),
    );
  }
}

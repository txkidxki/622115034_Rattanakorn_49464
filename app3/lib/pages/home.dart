import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

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
          child: ListView(
            children: [
              MyBox(
                "What is anime?",
                "a style of Japanese film and television animation, typically aimed at adults as well as children."
                ,
                "https://cdn.pixabay.com/photo/2012/06/08/06/19/clouds-49520_960_720.jpg"
              ),
              SizedBox(height: 16,),
              MyBox("what to watch today?", 
              "My Neighbors the Yamadas, Spirited Away , The Cat Returns, Howl's Moving Castle",
              "https://cdn.pixabay.com/photo/2017/08/02/14/26/winter-landscape-2571788_960_720.jpg"),
              SizedBox(height: 16,),
              MyBox("New anime this year",
              "Earwig and the Witch",
              "https://cdn.pixabay.com/photo/2017/01/14/12/59/iceland-1979445_960_720.jpg"),
              SizedBox(height: 16,),
            ],
          ),
        )
    );
  }


Widget MyBox(String title, String subtitle, String img_url){
  return Container( 
    padding: EdgeInsets.all(20),
    height: 150,
    decoration: BoxDecoration(
      color: Colors.yellow[700],
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: NetworkImage(
          img_url
        ),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.2), BlendMode.darken)
      )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text( title,
         style: TextStyle(
           fontSize: 25,
           color: Colors.white,
           fontWeight: FontWeight.bold),
         ),
        Text(subtitle, 
        style: TextStyle(fontSize: 15),
        )
      ],
    ),
  );
}

}
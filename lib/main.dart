import 'package:dzikir_pagi_petang/TampilanPagi.dart';
import 'package:dzikir_pagi_petang/TampilanPetang.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.white,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline), onPressed: () {
            openNewScreen(context, TampilanPetang());
          }),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Text("Dzikir"),
            Text("Pagi & Petang"),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                openNewScreen(context, TampilanPagi());
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 500,
                        spreadRadius: 0.1,
                        offset: Offset(0.0, 0.75)),
                  ],
                ),
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=2ahUKEwibyv6hq6XlAhVUbn0KHX__BNUQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.getyourguide.com%2Fmaui-l657%2Fmaui-9-hour-haleakala-national-park-sunrise-tour-t159572%2F&psig=AOvVaw1hQHbv-RKzawBNBZcybk4x&ust=1571471923965422"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          "Pagi",
                          style: teskWaktuDoa,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                openNewScreen(context, TampilanPetang());
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=2ahUKEwiqqoDeqazlAhUVOisKHRa7BpUQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.mikedixonphotography.com%2FSunsets%2F&psig=AOvVaw2N_dqA3HM7M2_XNU_hZ7fy&ust=1571711959726919"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          "Petang",
                          style: teskWaktuDoa,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  var teskWaktuDoa = TextStyle(
      fontSize: 35.0,
      color: Colors.white,
      fontFamily: 'arial',
      fontWeight: FontWeight.bold);

  Widget backgroundImage(String imageURL) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
              image: NetworkImage(imageURL))),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>screen));
  }
}

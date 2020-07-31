import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automatic Image Sliding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          CarouselSlider(
              items: [
                Container(
                    decoration: BoxDecoration(border: Border.all(width: 2)),
                    child: Image.asset("assets/images/connectivity.png")),
                Image.asset("assets/images/document.png"),
                Image.asset("assets/images/emp_logo.png"),
              ],
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                pauseAutoPlayInFiniteScroll: true,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              )),
          SizedBox(
            height: 50,
          ),
          SizedBox(
              height: 150.0,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Carousel(
                  images: [
                    AssetImage("assets/images/connectivity.png"),
                    AssetImage("assets/images/document.png"),
                    AssetImage("assets/images/emp_logo.png"),
                  ],
                  autoplay: true,
                  showIndicator: true,
                  boxFit: BoxFit.contain,
                  dotSize: 10.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.black54,
                  indicatorBgPadding: 5.0,
                  dotPosition: DotPosition.bottomCenter,
                  borderRadius: true,
                ),
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoes_ui/Animation/FadeAnimation.dart';
import 'package:shoes_ui/widgets/makeItem.dart';
import 'components/subtitleText.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          "Shoes", 
          style: TextStyle(
            color: Colors.black, 
            fontSize: 25, 
            fontWeight: FontWeight.bold
          )
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications_none, color: Colors.black,),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.shopping_cart, color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FadeAnimation(1, AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text("All", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )),
                    FadeAnimation(1.1,SubTitleText(title: "Snakers")),
                    FadeAnimation(1.2,SubTitleText(title: "Football")),
                    FadeAnimation(1.3,SubTitleText(title: "Soccer")),
                    FadeAnimation(1.4,SubTitleText(title: "Golf")),
                  ],
                ),
              ),
              SizedBox(height: 20),
              FadeAnimation(1.1, makeItem(image: 'assets/images/zapato-rojo.jpg', tag: 'red', context: context)),
              FadeAnimation(1.2, makeItem(image: 'assets/images/zapato-verde.jpg', tag: 'green', context: context)),
              FadeAnimation(1.3, makeItem(image: 'assets/images/zapato-black.jpg', tag: 'black', context: context)),
              FadeAnimation(1.4, makeItem(image: 'assets/images/zapato-naranja-blanco.jpg', tag: 'black', context: context)),
              FadeAnimation(1.5, makeItem(image: 'assets/images/zapato-rosa.jpg', tag: 'black', context: context)),
              FadeAnimation(1.6, makeItem(image: 'assets/images/zapatos-callejeros.jpg', tag: 'black', context: context)),
              FadeAnimation(1.7, makeItem(image: 'assets/images/zapato-blanco-rojo.jpg', tag: 'black', context: context)),
            ],
          ),
        ),
      ),
    );
  }
}
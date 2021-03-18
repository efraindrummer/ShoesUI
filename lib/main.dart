import 'package:flutter/material.dart';
import 'Pages/Shoes.dart';
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
                    AspectRatio(
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
                    ),
                    SubTitleText(title: "Snakers"),
                    SubTitleText(title: "Football"),
                    SubTitleText(title: "Soccer"),
                    SubTitleText(title: "Golf"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              makeItem(image: 'assets/images/zapato-rojo.jpg', tag: 'red', context: context),
              makeItem(image: 'assets/images/zapato-verde.jpg', tag: 'green', context: context),
              makeItem(image: 'assets/images/zapato-black.jpg', tag: 'black', context: context),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context}){
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes()));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 10,
                offset: Offset(0, 10)
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Sneakers", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text("Nike", style: TextStyle(color: Colors.white, fontSize: 24)),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Center(
                      child: Icon(Icons.favorite_border_outlined, size: 24,),
                    ),
                  )
                ],
              ),
              Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
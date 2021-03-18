import 'package:flutter/material.dart';
import 'package:shoes_ui/Animation/FadeAnimation.dart';

class Shoes extends StatefulWidget {

  final String image;

  const Shoes({Key key, this.image}) : super(key: key);

  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: 'red',
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
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
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),
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
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: FadeAnimation(1, Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.0)
                        ]
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FadeAnimation(1.3, Text("Snakers", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold))),
                        SizedBox(height: 24),
                        FadeAnimation(1.4, Text("Size", style: TextStyle(color: Colors.white, fontSize: 22))),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            FadeAnimation(1.5, BuildContainerPrice(text: "40",)),
                            FadeAnimation(1.45, BuildContainerPrice(text: "42",)),
                            FadeAnimation(1.46, BuildContainerPrice(text: "44",)),
                            FadeAnimation(1.47, BuildContainerPrice(text: "40",)),
                          ],
                        ),
                        SizedBox(height: 60,),
                        FadeAnimation(1.5, Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text("Buy Now!", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))
                          ),
                        )),
                        SizedBox(height: 30,)
                      ],
                    ),
                  )),
                )
                //Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildContainerPrice extends StatelessWidget {

  final String text;
  
  const BuildContainerPrice({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      margin: EdgeInsets.only(right: 20),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(text, style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))
      ),
    );
  }
}
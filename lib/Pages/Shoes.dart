import 'package:flutter/material.dart';

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
                //Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
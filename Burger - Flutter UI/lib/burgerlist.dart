
import 'package:flutter/material.dart';
import 'package:hamburgur/burgerpage.dart';
// ignore: duplicate_import
import 'burgerpage.dart';

class burgurlist extends StatefulWidget {
  final int row;

  burgurlist({required this.row});

  @override
  State<burgurlist> createState() => _burgurlistState();
}

class _burgurlistState extends State<burgurlist> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

//creating custon widget for images
    Widget baconimage = Container(
      height: 120,
      child: Image.asset("images/b1.png"),
    );

    Widget chickenimage = Container(
      height: 120,
      child: Image.asset("images/b1.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 330 : 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 20, right: index == items ? 20 : 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Burgerpage.tag);//also can call it by burger_page tag
                    },
                    child: Card(
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reverse ? " Cheese Burger" : "Bacon Burger",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "15.99 \$ USD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      //adding shape to outer card
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45)),
                      ),

                      //
                    ),
                  ),
                ),
                // add images from custom widget
                Positioned(
                  top: 60,
                  
                  
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Burgerpage.tag);//also can call it by burger_page tag
                    },
                    child: reverse ? chickenimage : baconimage,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

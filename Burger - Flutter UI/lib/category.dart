import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int currentSelectedItem =0;
  final List<String> imageURL = ['images/b1.png','images/b2.png','images/b3.png','images/b4.png','images/b5.png',];
  final List<String> textsz =['Bacon burger','Hawaii burger','KFC burger','California ','Carolina burger'];

  @override
  Widget build(BuildContext context) {
    int items = imageURL.length;
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        // margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    //spacing between two cards
                    margin: EdgeInsets.only(
                      left: index == 0 ? 20 : 0,
                      right: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSelectedItem= index;
                        });
                      },
                      child: Card(
                        color: index == currentSelectedItem? Color.fromARGB(255, 255, 0, 0) : Colors.white,
                        
                        child: Image(
                          image: NetworkImage(imageURL[index]),
                          // color: index == currentSelectedItem? Colors.white : Color.fromARGB(143, 0, 0, 0),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                    right: 20,
                  ),
                  width: 90,
                  child:  Row(
                    children: [
                      Spacer(),
                      Text(textsz[index]),
                    Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

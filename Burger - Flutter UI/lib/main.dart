import 'package:flutter/material.dart';
import 'header.dart';
import 'category.dart';
import 'burgerlist.dart';
import 'burgerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hamburgur(),
      // route to navigate to burger detail page
      routes: {Burgerpage.tag: (_) => Burgerpage()},
      debugShowCheckedModeBanner: false,
   
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color:Colors.black, centerTitle: true),
        bottomAppBarTheme: const BottomAppBarTheme(color: Colors.black),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 255, 0, 0),
            hoverColor: Colors.black),
        cardColor: Colors.teal,
      ),
    );
  }
}
//-----------------------------------------------------------------------//
class Hamburgur extends StatefulWidget {
  @override
  State<Hamburgur> createState() => _HamburgurState();
}

class _HamburgurState extends State<Hamburgur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 250, 208, 208),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Bur",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: AutofillHints.addressCity,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                        
                Container(
                  height: 40,
                  width: 40,
                  child: Image(
                    image: AssetImage("images/logo2.png",),
                    color: Colors.white,
                  ),
                ),
                const Text("Ger",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: AutofillHints.addressCity,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
              ],
            ),
            leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              )
            ],
          ),

//==============header===============
          Header(),

//===========category================
          Category(),

//===========category================
          burgurlist(row: 1),

          burgurlist(row: 2),

          //after header
          // SliverList(
          //   delegate: SliverChildListDelegate([
          //     const Text(
          //       "Hamberger",
          //       style: TextStyle(fontSize: 300),
          //     ),
          //   ]),
          // ),
        ],
      ),

      //==============Bottom navigation bar=============

      extendBody: true, // for background transparent
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.delivery_dining_outlined),
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notification_add),
                color: Colors.white,
              ),
              Spacer(),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.trolley),
                color: Colors.white,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

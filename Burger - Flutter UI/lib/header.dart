import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(
          children: [
            //===========header==================
            Column(
              children: [
                //container with decoration of border radius
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: size.height / 5,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(45),
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 2),
                      ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      //for circular profile picture
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 35,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/pro.png"),
                              radius: 30,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "John Wick",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.yellow,
                                ),
                                child: Text(
                                  "Premium Member",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),

                          //  SizedBox(
                          //   width: 200,
                          //  ),

                          Spacer(),
                          Container(
                            child: Text(
                              "\$ 250 USD",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
              ],
            ),

            //===========end of header==================


            //===========Searchbox code=================
            Container(
              
             margin: EdgeInsets.fromLTRB(30, 100, 30, 0),
                child: SizedBox(
                   height: 40,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.tealAccent,
                      elevation: 3,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: "SEARCH",
                          suffixIcon:  Icon(Icons.search),
                          contentPadding: EdgeInsets.all(10),
                          
                        ),
                        
                      ),
                    ),
                   
                ),
           
            )
          ],
        ),
      ]),
    );
  }
}

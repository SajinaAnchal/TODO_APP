import 'package:flutter/material.dart';

import 'New_Task.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Homepage",style: TextStyle(fontSize: 20,color: Colors.indigo),),
          centerTitle: true,
          leading:
          IconButton(onPressed: (){}, icon: Icon(Icons.horizontal_split_outlined,color: Colors.cyan,)),
          actions: [

            IconButton(onPressed: (){}, icon: Icon(Icons.notification_add,color: Colors.cyan,))
          ],

        ),
        body:
        SingleChildScrollView(
          child: Column(
              children:[
                Card(
                  elevation: 4,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.indigo,),
                    width: 350,
                    height: 200,

                    padding: EdgeInsets.only(left: 20,top: 10,right: 20,),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Today's Progress Summery",style: TextStyle(fontSize: 16,color: Colors.white),),
                        SizedBox(
                          height: 10,
                        ),
                        Text("15 Tasks",style: TextStyle(fontSize: 13,color: Colors.white),),


                        //  Image.asset('asset/avatar-stack-preview.png',height: 100,width: 150,),
                        Container(
                          child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                            children: [
                              Image.asset('asset/avatar-removebg-preview.png',height: 100,width: 150,),
                              Image.asset('asset/linear-removebg-preview.png',height: 70,width: 100,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Today's Task",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 20),
                      child: TextButton(onPressed: (){

                      }, child: Text("see All",style: TextStyle(color: Colors.black),)),
                    )
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Card(
                    child: Container(
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.indigo)
                        ),
                        leading: Image.asset('asset/hep.png.jpg',height: 25,width: 25,),
                        title: Text("UI Design",style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.bold,color: Colors.indigo ),),
                        subtitle: Text("09:00 AM - 11:00 AM"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.indigo,),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Card(
                    child: Container(
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.indigo)
                        ),
                        leading:Image.asset('asset/square.png.jpg',height: 25,width: 25,),
                        title: Text("UI Design",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold
                            ,color: Colors.indigo),),
                        subtitle: Text("09:00 AM - 11:00 AM"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.indigo,),


                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Card(
                    child: Container(
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.indigo)
                        ),
                        leading: Image.asset('asset/round2.jpg',height: 25,width: 25),
                        title: Text("UI Design",style: TextStyle(fontSize: 13,fontWeight:
                        FontWeight.bold ,color: Colors.indigo),),
                        subtitle: Text("09:00 AM - 11:00 AM"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.indigo,),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Card(
                    child: Container(
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.indigo)
                        ),
                        leading: Image.asset('asset/hep1.jpg',height: 25,width: 25),
                        title: Text("UI Design",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold
                            ,color: Colors.indigo),),
                        subtitle: Text("09:00 AM - 11:00 AM"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.indigo,),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Card(
                    child: Container(
                      child: ListTile(

                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.indigo)
                        ),
                        leading: Image.asset('asset/hep2.jpg',height: 25,width: 25),
                        title: Text("UI Design",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold ),),
                        subtitle: Text("09:00 AM - 11:00 AM"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.indigo,),

                      ),
                    ),
                  ),
                ),
                FloatingActionButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Create_Task()));

                },child: Icon(Icons.add,color: Colors.indigo,),),
                BottomNavigationBar(



                  items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home),
                      label: "login",
                      backgroundColor: Colors.blue,),


                    BottomNavigationBarItem(icon: Icon(Icons.card_travel_rounded),
                        label: "register",
                        backgroundColor: Colors.blue),

                    BottomNavigationBarItem(icon: Icon(Icons.check_box_outline_blank),
                        label: "register",
                        backgroundColor: Colors.blue),

                    BottomNavigationBarItem(icon: Icon(Icons.person),
                        label: "register",
                        backgroundColor: Colors.white),


                  ],
                ),



              ]

          ),
        )

    );
  }
}


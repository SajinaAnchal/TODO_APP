import 'package:assignment_on_12_06/Home.dart';
import 'package:flutter/material.dart';

import 'Todo_2.dart';

class Log_1 extends StatefulWidget {
  const Log_1({Key? key}) : super(key: key);

  @override
  State<Log_1> createState() => _Log_1State();
}

class _Log_1State extends State<Log_1> {
  final formkey=GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Card(
              child: Container(
                  height: 400,
                  width: 450,
                  // color: Colors.cyan,
                  color: Color(0xff84C4CCFF),
                  child:Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Center(child: Text("TODO",
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,

                            color:Colors.deepPurple),)),

                      SizedBox(
                        height: 70,
                      ),


                      Card(
                        child: TextFormField(
                          validator: (val){
                            if(val!.isEmpty){
                              return "email cannot empty";
                            }else if (val.length<3){
                              return "email must be atleast 10 characters";
                            }return null;
                          },
                          decoration: InputDecoration(
                              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              constraints: BoxConstraints(maxHeight:275,maxWidth: 275,),
                              contentPadding: EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),



                              label: Text("Email",style: TextStyle(color: Colors.blue),)

                         ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "password cannot empty";
                            } else if (val.length < 10) {
                              return "password must be numbers and strings";
                            }return null;
                          },
                          decoration: InputDecoration(
                              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              constraints: BoxConstraints(maxHeight:275,maxWidth: 275,),
                              contentPadding: EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),

                              label: Text("password",style: TextStyle(color: Colors.blue),)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(onPressed: (){}, child: Text("forget password?",style: TextStyle(color: Colors.blue))),

                    ],
                  )

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                       // shape: MaterialStateProperty.all(),
                        backgroundColor:MaterialStateProperty.all(Colors.indigo)
                    ),
                    child: Text('Login',style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
                    },
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 30,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Image.asset('asset/facebook.png',height: 50, width: 50,)),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Image.asset('asset/twi.png',height: 50,width: 30,),
                  //iconSize: 50,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(onPressed: (){},
                    icon: Image.asset('asset/goog.png',height: 50,width: 50,))

              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Don't have an account?",style: TextStyle(fontSize: 15),),
                ),
                TextButton

                  (onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Log_2()));
                }, child: Text("Sign up",style: TextStyle(color: Colors.blue,),))
              ],
            )

          ],
        ),
      ),
    );
  }
}

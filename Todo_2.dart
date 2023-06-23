import 'package:assignment_on_12_06/Home.dart';
import 'package:assignment_on_12_06/Todo_1.dart';
import 'package:flutter/material.dart';

class Log_2 extends StatefulWidget {
  const Log_2({Key? key}) : super(key: key);

  @override
  State<Log_2> createState() => _Log_2State();
}

class _Log_2State extends State<Log_2> {
  final formkey=GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirmpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column(
            children: [
              SizedBox(
                height: 39,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      height: 420,
                      width: 400,
                      // color: Colors.cyan,
                      color: Color(0xff84C4CCFF),
                      child:Column(
                        children: [
                          SizedBox(
                            height:33,
                          ),
                          Center(child: Text("TODO",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                                color:Colors.deepPurple),)),

                          SizedBox(
                            height: 50,
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
                                  // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
                                  label: Text(" confirm password",style: TextStyle(color: Colors.blue),)
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
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
                                  label: Text("Password",style: TextStyle(color: Colors.blue),)
                              ),
                            ),
                          ),

                          //  Text("forget password?",style: TextStyle(color: Colors.blue),)
                        ],
                      )

                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                    width: 300.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        //shape: MaterialStateProperty.all(LinearBorder()),
                          backgroundColor:MaterialStateProperty.all(Colors. indigo)
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
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    icon: Image.asset('asset/twi.png',height: 30,width: 30,),
                    //iconSize: 50,
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(onPressed: (){},
                      icon: Image.asset('asset/goog.png',height: 30,width: 30,))

                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("You already have an account?",style: TextStyle(fontSize: 15),),
                  ),
                  TextButton

                    (onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Log_1()));}, child: Text("Sign in",style: TextStyle(color: Colors.blue,),))
                ],
              )

            ]

        )
    );
  }
}


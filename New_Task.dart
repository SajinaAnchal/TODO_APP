import 'package:assignment_on_12_06/My_Task.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Create_Task extends StatefulWidget {
  const Create_Task({Key? key}) : super(key: key);

  @override
  State<Create_Task> createState() => _Create_TaskState();
}

class _Create_TaskState extends State<Create_Task> {
  TextEditingController date=TextEditingController();
  TextEditingController time=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Task',style: TextStyle(color: Colors.indigo),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.indigo,),
        actions: [Icon(Icons.notifications_outlined,color: Colors.indigo,)],
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Task Name',style: TextStyle(color: Colors.indigo),),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // constraints: BoxConstraints(maxHeight:475,maxWidth: 475,),
                  contentPadding: EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),
                  labelText: 'UI Design',
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  Text('Date & Time',style: TextStyle(color: Colors.indigo),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: date,
                    decoration: InputDecoration(
                        labelText: 'Date',border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                    ),

                    onTap: ()async{
                      DateTime? datepick=await showDatePicker(context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000), lastDate: DateTime(2025));
                      if (datepick!=null)
                      {
                        print(datepick);
                        String formatedate=
                        DateFormat("dd-MM-yyyy").format(datepick);
                        print(formatedate);
                        setState(() {
                          date.text=formatedate;
                        });
                      }
                      Text('Date');
                    }
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('Start time',style: TextStyle(color: Colors.indigo),),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 00.0,right: 10.0,top: 3,bottom: 5),
                          child:
                          TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Time',
                                  border: OutlineInputBorder()
                              ),
                              controller: time,
                              onTap: ()async{
                                TimeOfDay? timepick=await showTimePicker(context: context, initialTime: TimeOfDay.now(),
                                  initialEntryMode: TimePickerEntryMode.input,);
                                if(timepick!=null){
                                  print(timepick);
                                  String formatetime=timepick.format(context);

                                  print(formatetime);
                                  setState(() {
                                    time.text=formatetime;
                                  });
                                }
                              }
                          ),

                        ),
                        // Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('End time',style: TextStyle(color: Colors.indigo),),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 00.0,right: 10.0,top: 3,bottom: 5),
                          child:
                          Column(
                            children: [
                              TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Time',
                                      border: OutlineInputBorder()
                                  ),

                                  controller: time,

                                  onTap: ()async{
                                    TimeOfDay? timepick=await showTimePicker(context: context, initialTime: TimeOfDay.now(),
                                      initialEntryMode: TimePickerEntryMode.input,);
                                    if(timepick!=null){
                                      print(timepick);
                                      String formatetime=timepick.format(context);

                                      print(formatetime);
                                      setState(() {
                                        time.text=formatetime;
                                      });
                                    }
                                  }
                              ),


                            ],
                          ),


                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Text('Description',style: TextStyle(color: Colors.indigo),),
                ],

              ),
              SizedBox(
                height: 15,
              ),
              Card(
                child: Text('bnfjjkknhfe[ogih[erhbjvfvjohfuhguerofbbjvfeuojffhvhjbabjkfvifbsdkhb'
                    'fuvhfuhhhjkfvjkfjvbfjfdhfguirghfeghfbvkjvbfgh'
                    'fougherjkvbfuigrufir7ifohrhfdbyihjkdhffuygwfhbfhdgdfbdjkhbvyfhjhfyrdndbfhdf'
                    '9ytpr7a[er8guigyfghifdbdbjbfakgfhbb'

                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    //shape: MaterialStateProperty.all(LinearBorder()),
                    backgroundColor:MaterialStateProperty.all(Colors.indigo)
                ),
                child: Text('Create Task',style: TextStyle(color: Colors.white),),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>My_Task()));
                },
              ),

            ],
          ),
        ),
      ),


    );
  }
}







import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appbirthday1/happy.dart';

class Star1 extends StatefulWidget {
  @override
  _Star1State createState() => _Star1State();
}

class _Star1State extends State<Star1> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController day = TextEditingController();
  String str1;
  var ages;
  int str;
var months;
var days;
   mm() {
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent[100],
          title: Text('WELCOme IN BIRTHDAY APP'),
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width/1.3,
            height: MediaQuery.of(context).size.height/2,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              child: ListView(

                children: [


                  TextField(
                    decoration: InputDecoration(hintText: 'enter the name',border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20) ,

                    ),),
                    controller: name,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: age,
                      decoration: InputDecoration(hintText: 'enter year birth',border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20) ,

                      ),
                      suffixIcon: IconButton(
                        color: mm(),
                        icon: Icon(Icons.circle),
                        onPressed: () {

                          int str2;
                          setState(() {
                             str2=int.parse(age.text);
                               ages=DateTime.now().year-str2;
                             mm(){return Colors.blue;}
                             print (ages);
                          });
                        },
                      ),
                      labelText: 'ages\n${ages}',
                      ),


                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: month,
                  decoration: InputDecoration(hintText: 'enter year birth',border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20) ,

                  ),
                    suffixIcon: IconButton(
                      color: mm(),
                      icon: Icon(Icons.circle),
                      onPressed: () {

                        int str3;
                        setState(() {
                          str3=int.parse(month.text);
                          months=(str3-DateTime.now().month)  ;
                          mm(){return Colors.blue;}
                          print (months);
                        });
                      },
                    ),
                    labelText: 'ages\n${months}',
                  ),


                ),
              ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: day,
                      decoration: InputDecoration(hintText: 'enter year birth',border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20) ,

                      ),
                        suffixIcon: IconButton(
                          color: mm(),
                          icon: Icon(Icons.circle),
                          onPressed: () {

                            int str3;
                            setState(() {
                              str3=int.parse(day.text);
                              days=(str3-DateTime.now().day)  ;
                              mm(){return Colors.blue;}
                              print (days);

                            });
                          },
                        ),

                        labelText:
                        'ages\n${days>0?days:days}',
                      ),


                    ),
                  ),

                  Container(

                    child: RaisedButton(
                      onPressed: () {
                        str1 = name.text;

                        str = str1.length;

                        int str2 = int.parse(age.text);
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Happy1(

                                str1: str,
                                str2: str2,
                              );
                            },
                          ));
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Happy1 extends StatefulWidget {
  int str1;
  int str2;
  Happy1({this.str1,this.str2});
  @override
  _Happy1State createState() => _Happy1State();
}

class _Happy1State extends State<Happy1> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent,),
    body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage('image/dart.JPG'),
                  fit: BoxFit.fill)
          ),
        ),

        Container(
          alignment: Alignment.center,
          child: ListView(
            children: [
              Padding(padding: const EdgeInsets.all(10.0),
                child:  Container(
                    width:200,
                    height: MediaQuery.of(context).size.height/6,
                    alignment: Alignment.center,color: Colors.grey,padding: const EdgeInsets.all(5.0),child:


                ListView.builder(scrollDirection: Axis.horizontal,itemCount: widget.str1,itemBuilder: (context, index) {
                  return
                    Padding(padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          color: Colors.purple,
                          height: 50
                          ,
                          width: 50,
                        ),
                      ),)
                  ;
                },)
                ),),
              Padding(padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width/2,
                  color: Colors.grey,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: 80,height: 80,color: Colors.purple,),
                      ),
                      Container(width:300,height: MediaQuery.of(context).size.height/7
    ,alignment: Alignment.center,color: Colors.grey,padding: const EdgeInsets.all(5.0),child:


                      ListView.builder(scrollDirection: Axis.horizontal,itemCount: widget.str1,itemBuilder: (context, index) {
                        return
                          Padding(padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Container(
                                color: Colors.purple,
                                height: 50
                                ,
                                width: 50,
                              ),
                            ),)
                        ;
                      },)
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.purple,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(padding: const EdgeInsets.fromLTRB(50, 20, 0, 20)
                          ,
                          child: Container(
                            height: 150,
                            width: 200,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: widget.str1,itemBuilder: (context, index) {
                                return Padding(padding: const EdgeInsets.all(5.0),
                                  child: Card(color: Colors.purple,child: Container(height: 100,width: 100,),),);
                              },),
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(itemCount: widget.str1,itemBuilder: (context, index) {
                              return Padding(padding: const EdgeInsets.all(5.0),
                                child: Card(color: Colors.purple,child: Container(height: 50,width: 50,),),);
                            },),
                          ),
                        ),


                      ],
                    )


                ),
              ),

            ],

          ),
        ),


      ],
    ),

    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home:MedicalCard()
));
class MedicalCard extends StatefulWidget {
  @override
  _MedicalCardState createState() => _MedicalCardState();
}

class _MedicalCardState extends State<MedicalCard> {
  int age=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Medical ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            age=age+1;
          });
        },
        child: Icon(Icons.add),  ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: CircleAvatar(backgroundImage: AssetImage('assets/joker.jpeg'),radius: 40.0,),),
            Divider(
              height: 10.0,

              color: Colors.purple,
            ),
            Text('Name',
            style:TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
            textAlign: TextAlign.right),
            SizedBox(height:10.0),
            Text(
              'Md Humaid Husain',
              style:TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold

              )
            ),
            SizedBox(height:30.0),
          Text('Age',
          style:TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
        )),

            Text(
                '$age',
                style:TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold

                )
            ),
            SizedBox(height:30.0),
            Text('Gender',
                style:TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),
            Text(
                'Male',
                style:TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold

                )
            ),
            SizedBox(height :30.0),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                      Icons.email,
                      color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.all(1.0),
                    height: 15.0 ,
                    width: 300,
                    color:Colors.red,
                    child: Text(":             humaidhusain98@gmail.com",style: TextStyle(color:Colors.blue,fontSize: 10.0),),
                  ),

                ],

            ),
          ],
        )
      ),

    );
  }
}



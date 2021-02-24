import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime
{
  String location;
  String time;
  String flag;//url to asset flag icon
  String url;
  bool isDaytime;

  //constructor
  WorldTime({this.location,this.url,this.flag})
  {

  }


  Future<void> getTime() async
  {
    try{
    Response response =await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);


    //get properties from data
    String datetime = data['datetime'];
    String offset   = data['utc_offset'].substring(1,3);
    //print(datetime);
    //print(offset);

    // create DateTime object
    DateTime now=DateTime.parse(datetime);
    now.add(Duration(hours: int.parse(offset)));

    //set time property
    isDaytime= now.hour>6 && now.hour<20 ? true:false;
    time=DateFormat.jm().format(now);
    print(time);
    }
    catch(e){
     print('caught error:$e');
     time='could not get time data';
    }
  }

}



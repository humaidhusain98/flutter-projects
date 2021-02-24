import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  String location;//location name for the ui
  String time;//the time in that location
  String flag;// url to an asset flag icon
  String url;//location url

  WorldTime({this.location,this.flag,this.url});


  Future<void> getTime() async {
    try {
      Response response = await get(
          'http://worldtimeapi.org/api/timezone /$url');
      Map data = jsonDecode(response.body);
      //print(data);

      //get properties from data
      String datetime = data['datetime'];
      String hoursoff = data['utc_offset'].substring(1, 3);
      String minutesoff = data['utc_offset'].substring(4, 6);
      //print(datetime);
      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(
          Duration(hours: int.parse(hoursoff), minutes: int.parse(minutesoff)));

      time = now.toString();
    }
    catch(e){
      time="could not get time";

  }

  

  }









}


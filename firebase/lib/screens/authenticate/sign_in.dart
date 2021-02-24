import 'package:firebase/shared/constants.dart';
import 'package:firebase/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:firebase/services/auth.dart';



class SignIn extends StatefulWidget {

  final Function toggleView;

  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formkey=GlobalKey<FormState>();
  bool loading = false;
  //text field state
  String email='';
  String passwd='';
  String error='';


  @override
  Widget build(BuildContext context) {
    return loading ? Loading():Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
        actions: <Widget>[
          FlatButton.icon(onPressed: (){
            widget.toggleView();
          }, icon: Icon(Icons.person), label: Text('Register')),

        ],

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child: Form(
            key: _formkey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'email'),
                validator: (val) => val.isEmpty ? 'Enter an Email':null,
                onChanged: (val){
                  setState(() {
                    email=val;
                  });

                },

              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                validator: (val) => val.length<6 ? 'Enter a password with min 6 chars':null,
                obscureText: true,
                onChanged: (val){
                  setState(() {
                    passwd=val;
                  });


                },

              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                color: Colors.pink[400],
                child: Text('Sign In',style: TextStyle(color: Colors.white ),),
                onPressed: ()async {
                  if(_formkey.currentState.validate()){
                    setState(() {
                      loading=true;
                    });
                    dynamic result= await _auth.signInwithEmailandPassword(email, passwd);
                    if(result==null){
                      setState(() {
                        error="could not sign in with those credentials";
                        loading=false;
                      });

                    }
                  }

                },

              ),
              SizedBox(height: 15.0,),
              Text(error,style: TextStyle(color: Colors.red,fontSize: 14.0),),

            ],

          ),

        ),

      ),


    );
  }
}

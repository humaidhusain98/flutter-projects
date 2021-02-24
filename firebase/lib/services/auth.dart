import 'package:firebase/models/user.dart';
import 'package:firebase/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on Firebaseuser

  User _userFromFirebaseUser(FirebaseUser user){
    return user !=null? User(uid: user.uid) : null; 

  }

  // auth change user stream

  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebaseUser);
        //.map((FirebaseUser user)=> _userFromFirebaseUser(user));

  }




  //sign in anon



  Future signInAnon() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }

  }

  //sign in with email & password

  Future signInwithEmailandPassword(String email,String passwd)  async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: passwd);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);


    }
    catch(e){
      print(e.toString());
      return null;
    }


  }


  //register with email & password
  Future registerwithEmailandPassword(String email,String passwd)  async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: passwd);
      FirebaseUser user = result.user;

      //create a new document for the user with the uid
      await DataBaseService(uid: user.uid).updateUserData('0','new crew member' , 100);
      return _userFromFirebaseUser(user);


    }
    catch(e){
      print(e.toString());
      return null;
    }


  }

  //sign out

  Future signOut() async{
    try{

      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;


    }


  }


}
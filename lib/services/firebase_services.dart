import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices{
  static Future<String?> createaccount(String email , String password)async{
    try{
      FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password);
      return null;

    }
    on FirebaseAuthException catch(e){
      if(e.code == "ERROR_EMAIL_ALREADY_IN_USE"){
        return 'email already is in use';
      }else if(e.code == "ERROR_WEAK_PASSWORD"){
        return 'Password is two weak';
      }
    }
    catch(e){
      return e.toString();
    }
}}

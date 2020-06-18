import 'package:firebase_auth/firebase_auth.dart';
// import 'package:toq_v1/authentication/user.dart';




class AuthService{



  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> getCurrentUID() async{
    String uid = (await _firebaseAuth.currentUser()).uid;
    return uid;
  }

//   User _userFromFirebaseUSer(FirebaseUser user){
//     return user != null ? User(uid: user.uid): null;
//   }

//   Future signInWithEmailAndPassword (String email, String password) async{
//     try{
//       AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
//       FirebaseUser user  = result.user;
//       return _userFromFirebaseUSer(user);
//     }catch(e){
//       print(e.toString());
//       return null;

//     }
  }




















// }
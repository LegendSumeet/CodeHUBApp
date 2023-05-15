import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class logincontrol extends GetxController{
  var _logincontrol = GoogleSignIn();
  var googleaccount = Rx<GoogleSignInAccount?>(null);
  
  login() async {  
    googleaccount.value = await _logincontrol.signIn();
     
  }
  logout() async {
    await _logincontrol.signOut();
    googleaccount.value = await _logincontrol.signInSilently();
  }
}
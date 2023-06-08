// import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';
// import 'package:google_identity_services_web/google_identity_services_web.dart';
// import 'package:google_sign_in_web/google_sign_in_web.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';

// class GoogleAuthApi {
//   static final googleSignIn = GoogleSignIn(
//     scopes: ['https://mail.google.com/'],
//   );

//   static Future<GoogleSignInAccount?> signIn() async {
//     if (await googleSignIn.isSignedIn()) {
//       return await googleSignIn.signIn();
//     } else {
//       return await googleSignIn.signIn();
//     }
//   }

//   static Future signOut() => googleSignIn.signOut();
// }

class GoogleWebAuthApi {
  static final googleWebSignIn = GoogleSignInPlugin()..init();

  static Future<GoogleSignInUserData?> signIn() async {
    if (await googleWebSignIn.isSignedIn()) {
      return await googleWebSignIn.signIn();
    } else {
      return await googleWebSignIn.signIn();
    }
  }

  static Future signOut() => googleWebSignIn.signOut();
}

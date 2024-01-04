import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfile {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> getCurrentUserEmail() async {
    User? user = _auth.currentUser;
    return user?.email;
  }

  Future<Map<String, dynamic>> getUserInfo() async {
    String? userEmail = await getCurrentUserEmail();
    print(userEmail);

    if (userEmail != null) {
      QuerySnapshot<Map<String, dynamic>> userDoc = await _firestore
          .collection('users')
          .where("email", isEqualTo: userEmail)
          .get();
      print(userDoc.docs);

      if (userDoc.docs.isNotEmpty) {
        // Assuming there's only one document for a unique email
        DocumentSnapshot<Map<String, dynamic>> userDocs = userDoc.docs.first;
        return userDocs.data()!;
      }
      // if (userDoc.exists) {
      //   return userDoc.data()!;
      // }
    }

    return {};
  }
}

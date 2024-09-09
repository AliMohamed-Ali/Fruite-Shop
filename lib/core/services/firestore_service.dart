import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_app/core/services/database_service.dart';

class FireStoreService extends DatabaseService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> setData(
      {required String path,
      required Map<String, dynamic> data,
      String? docId}) async {
    if (docId != null) {
      await firestore.collection(path).doc(docId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String docId}) async {
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await firestore.collection(path).doc(docId).get();
    return documentSnapshot.data()!;
  }
  
  @override
  Future<bool> isExist({required String path, required String docId})async {
    var data =await firestore.collection(path).doc(docId).get();
    return data.exists;  
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_app/core/services/database_service.dart';

class FireStoreService extends DatabaseService {
 final FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  @override
  Future<void> setData({required String path,required Map<String, dynamic> data})async {
    await firestore.collection(path).add(data);
  }
 
}
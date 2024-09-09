
abstract class DatabaseService {
  Future<void> setData({required String path, required Map<String, dynamic> data,  String? docId});
  Future<Map<String, dynamic>> getData({required String path, required String docId});
  Future<bool> isExist({required String path, required String docId});
}
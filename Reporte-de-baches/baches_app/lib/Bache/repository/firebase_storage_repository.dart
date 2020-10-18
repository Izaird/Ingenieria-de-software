import 'dart:io';
import 'package:baches_app/Bache/repository/firebase_storage_api.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageRepository {
  final _firebaseStorageAPI = FirebaseStorageAPI();

  Future<StorageUploadTask> uploadFile(String path, File image) =>
      _firebaseStorageAPI.uploadFile(path, image);
}

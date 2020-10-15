// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:baches_app/User/repository/cloud_firestore_api.dart';
import 'package:baches_app/User/model/user.dart';

class CloudFireStoreRepository {
  final _cloudFirestoreAPI = CloudFireStoreAPI();

  void updateUserDataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserData(user);
}

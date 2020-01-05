import 'package:angular_guru/models/quiz.dart';
import 'package:angular_guru/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  DatabaseService({this.uid});
  final String uid;
  // collection reference
  final CollectionReference angularQuizzesCollection =
      Firestore.instance.collection('angularQuizzes');

  // Future updateUserdata(String sugars, String name, int strength) async {
  //   return await angularQuizzesCollection
  //       .document(uid)
  //       .setData({'sugars': sugars, 'name': name, 'strength': strength});
  // }

  // user data from snapshots
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(uid: uid, name: snapshot.data['name']);
    // sugars: snapshot.data['sugars'],
    // strength: snapshot.data['strength']);
  }

  // AngularQuiz list from snapshot
  List<AngularQuiz> _angularQuizzesListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      //print(doc.data);
      return AngularQuiz(
          short: doc.data['short'] ?? '',
          long: doc.data['long'] ?? '',
          tag: doc.data['tag'] ?? '0',
          difficultyLevel: doc.data['difficultyLevel'] ?? 100);
    }).toList();
  }

  // get angularQuizzes stream
  Stream<List<AngularQuiz>> get angularQuizzes {
    return angularQuizzesCollection
        .snapshots()
        .map(_angularQuizzesListFromSnapshot);
  }

  // get user doc stream
  Stream<UserData> get userData {
    return angularQuizzesCollection
        .document(uid)
        .snapshots()
        .map(_userDataFromSnapshot);
  }
}

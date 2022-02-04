import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TestingFirebaseUser {
  TestingFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TestingFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TestingFirebaseUser> testingFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<TestingFirebaseUser>(
        (user) => currentUser = TestingFirebaseUser(user));

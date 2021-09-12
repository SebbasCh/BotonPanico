import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BotonDePanicoFirebaseUser {
  BotonDePanicoFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

BotonDePanicoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BotonDePanicoFirebaseUser> botonDePanicoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BotonDePanicoFirebaseUser>(
            (user) => currentUser = BotonDePanicoFirebaseUser(user));

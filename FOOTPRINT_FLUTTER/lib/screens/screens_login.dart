import 'package:FOOTPRINT_FLUTTER/main.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_index.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:FOOTPRINT_FLUTTER/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:google_sign_in/google_sign_in.dart';

String email = '';
String password = '';
String uid = '';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '로그인',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          EmailInput(),
          PasswordInput(),
          LoginButton(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(thickness: 1),
          ),
          RegisterButton(),
        ],
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (value) {
          email = value;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(labelText: '이메일', helperText: ''),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (value) {
          password = value;
        },
        obscureText: true, //비밀번호 그대로 보이는거 방지
        decoration: const InputDecoration(labelText: '비밀번호', helperText: ''),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  Future<List<UserModel>> getUserData(UID) => FirebaseFirestore.instance
      .collection('user')
      .where('uid', isEqualTo: UID)
      .get()
      .then((snapshot) =>
          snapshot.docs.map((doc) => UserModel.fromJson(doc.data())).toList());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.05,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () async {
              try {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email, password: password);
                final User user = FirebaseAuth.instance.currentUser!;
                // user.

                final userDataBox = Hive.box('UserData');
                getUserData(user.uid).then((value) {
                  print(value[0].email);
                  final userData = UserModel(
                    uid: value[0].uid,
                    email: value[0].email,
                    nickname: value[0].nickname,
                  );
                  userDataBox.put(0, userData);
                  Navigator.of(context).pushReplacementNamed('/index');
                });

                // Navigator.of(context).pushReplacementNamed('/index');
              } on FirebaseAuthException catch (e) {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("로그인 실패!"),
                    content: Text('${e.message}'),
                  ),
                );
              }

              // setLogin().then((_) {
              //   Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(
              //       builder: (context) => IndexScreen(), //리스트 스크린이 아니라 어디로 가야지
              //     ),
              //   );
              // });
            },
            child: const Text('로그인')));
  }
}

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/register');
        },
        child: Text(
          '이메일로 회원가입',
          style: TextStyle(color: Palette.kToGreen[700]),
        ));
  }
}

// Future<UserCredential> signInWithGoogle() async {
//     final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
//     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//     final GoogleAuthCredential credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
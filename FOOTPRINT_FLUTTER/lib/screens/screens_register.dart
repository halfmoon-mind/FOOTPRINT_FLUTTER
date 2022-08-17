import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//변수 만들기
String email = "";
String password = "";
String nickname = "";
String id = "";
String password_check = "";

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '회원가입',
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                EmailInput(),
                NicknameInput(),
                PasswordInput(),
                PasswordConfirmInput(),
                RegisterButton()
              ],
            ),
          ),
        ));
  }
}

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (value) {
          email = value.toString().trim();
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: '이메일', helperText: '', hintText: '이메일을 입력하세요'),
      ),
    );
  }
}

class NicknameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (value) {
          nickname = value;
        },
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            labelText: '닉네임', helperText: '', hintText: '닉네임을 입력하세요'),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (value) {
          password = value;
        },
        keyboardType: TextInputType.visiblePassword,
        obscureText: true, //비밀번호 그대로 보이는거 방지
        decoration: InputDecoration(
            labelText: '비밀번호', helperText: '', hintText: '비밀번호를 입력하세요'),
      ),
    );
  }
}

class PasswordConfirmInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (value) {
          password_check = value;
        },
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            labelText: '비밀번호 확인', helperText: '', hintText: '비밀번호를 재입력하세요'),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        // onPressed: () {
        //   ScaffoldMessenger.of(context)
        //     ..hideCurrentSnackBar()
        //     ..showSnackBar(SnackBar(content: Text('회원가입이 완료되었습니다!')));
        //   Navigator.pop(context);
        // },
        onPressed: () async {
          try {
            UserCredential userCredential = await FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                    email: email, password: password);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('회원가입이 완료되었습니다!'),
              ),
            );

            CollectionReference users =
                FirebaseFirestore.instance.collection('user');
            users.doc(email).set(({
                  'uid': userCredential.user!.uid,
                  'email': email,
                  'id': id,
                  'nickname': nickname,
                }));
          } on FirebaseAuthException catch (e) {
            print(e.code);
          }
        },

        child: Text('회원가입'),
      ),
    );
  }
}

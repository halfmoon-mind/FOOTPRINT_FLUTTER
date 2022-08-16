import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          EmailInput(),
          NicknameInput(),
          PasswordInput(),
          PasswordConfirmInput(),
          RegisterButton()
        ],
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (email) {},
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
        onChanged: (context) {},
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
        onChanged: (password) {},
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
        onChanged: (password) {},
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
        onPressed: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text('회원가입이 완료되었습니다!')));
          Navigator.pop(context);
        },
        child: Text('회원가입'),
      ),
    );
  }
}

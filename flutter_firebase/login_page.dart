import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  LoginPage({Key?key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  late String email;
  late String password;
  late String result;

  @override
    void dispose() {
      _emailController.dispose();
      _passwordController.dispose();
      super.dispose();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login") ,
        ),
        body: _formularioLogin(),
    );
  }
  Widget _formularioLogin(){
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text("Email"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "email"
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text("Password"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextField(
            obscureText: true,
            controller: _passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "password"
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton( 
            child: Container(
              child: Text("Login"),
            ),
            onPressed: _loginButton,
          ),
        )
      ],
    );
  }
  void _loginButton(){
    setState(() {
          email = _emailController.text;
          password = _passwordController.text;
          authUser(email, password);
        });
  }
  
  void resultado(){
    result = _emailController.text;
  }

  void authUser (String email, String password) async{
    try{
      var url = Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCK5waI1ZGrHrl_IwOXwTYukK-VkJ2SikM');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if(response.statusCode == 200){
        Navigator.popAndPushNamed(context, 'read');
      }
      else
      Navigator.popAndPushNamed(context, 'start');
    }
    catch(error){
      print(error.toString());
    }

  }
}
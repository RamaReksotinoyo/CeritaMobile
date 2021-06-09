import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200,),
              Container(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  'Login For Upload Your Kids Story',
                  style: TextStyle(fontSize: 18, decorationThickness: 1),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Input Your Username",
                  labelText: "Username",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Input Your Password",
                  labelText: "Password",
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              FlatButton(
                  onPressed: () {},
                  child: Container(
                      padding: EdgeInsets.only(
                        left: 200, top: 20
                      ),
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                  )
              ),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.all(40),
                  child: FlatButton(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 25, decorationThickness: 1),
                    ),
                    color: Colors.deepOrange[600],
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ),
              FlatButton(onPressed: (){} ,child: Text('Register', style: TextStyle(fontSize: 15),),)
            ],
          ),
        ),
      ),
    );
  }
}

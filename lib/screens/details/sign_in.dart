import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({
    Key key,
    @required this.nameController,
    @required this.passwordController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(25),
        child: ListView(

          children: <Widget>[

            Container(

              child: Column(
                children: [
                  Text(

                    'Sign in',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        height: 8,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                controller: nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',

                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),


            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Login / Register',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SwitchWidget(
                              onPressed: null,
                              child: null
                          ),
                        )
                  ),
                ],

              ),

            ),




            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey,
                  child: Text('LOG IN',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),

          ],
        ));
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({
    Key key, child, onPressed,
  }) : super(key: key);

  @override
  SwitchWidgetClass createState() => new SwitchWidgetClass();
}

class SwitchWidgetClass extends State {

  bool switchControl = false;

  void toggleSwitch(bool value) {

    if(switchControl == false)
    {
      setState(() {
        switchControl = true;
      });

      // Put your code here which you want to execute on Switch ON event.

    }
    else
    {
      setState(() {
        switchControl = false;
      });

      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Transform.scale(
          scale: 1.5,

          child: Expanded(
            child: Switch(
              onChanged: toggleSwitch,
              value: switchControl,
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
            ),
          ),
        ),
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:xyzzz/My_button.dart';
import 'package:xyzzz/mytextfield.dart';

import 'Squre_tile.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
 final usernameController = TextEditingController();
 final passwordController = TextEditingController();
 void signUserIn (){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SizedBox(height: 50,),
                  Icon(Icons.lock,size: 100,),
                 SizedBox(height: 50,),
                Text('Welcome back you\'ve been missed!',
                  style:TextStyle(color: Colors.grey[700],fontSize:16 ),),
               SizedBox(height: 30,),
               MyTextField(
                 controller:usernameController,
                 hintText: 'Username',
                 obscureText: false,
               ),
                  SizedBox(height: 10,),
                MyTextField(
                  controller:passwordController ,
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(mainAxisAlignment:MainAxisAlignment.end ,
                    children: [
                      Text('Foprgot Password?'),
                    ],

                  ),
                ),
                SizedBox(height: 25,),
                MyButton(onTap: signUserIn,),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Or contionue with'),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SqureTile(imagePath: 'lib/images/googlelogo.png',),
                    SizedBox(width: 20,),
                    SqureTile(imagePath: 'lib/images/applelogos.png',)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(('Not a member?')),
                    SizedBox(width: 10,),
                    Text('Register now',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                    
                  ],
                )

             ],
            ),
          ),
        ),
      ),

    );
  }
}

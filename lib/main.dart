import 'package:destiny_choices/options_screen.dart';
import 'package:flutter/material.dart';
import 'story_brain.dart';
import 'game_screen.dart';
import 'options_screen.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 100.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("The Unkown",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                SizedBox(height: 15,),

                Container(
                  width: 350,
                height: 200,
                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/destiny_background3.jpg'),
                  fit: BoxFit.contain
                ),
                  border: Border.all(color: Colors.white30),
                      ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 100,
                  height: 60,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen,
                      child: Text("Start Game!"),
                      onPressed: ()async{

                      await Future.delayed(Duration(seconds: 1));
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  OptionsScreen(),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
    );
  }
}

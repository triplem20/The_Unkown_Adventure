import 'package:destiny_choices/main.dart';
import 'package:flutter/material.dart';
import 'game_screen.dart';  // Ensure you import GameScreen

class OptionsScreen extends StatefulWidget {
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30,horizontal: 5),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: FloatingActionButton(
                  backgroundColor: Colors.teal,
                  child: const Icon(Icons.arrow_back, color: Colors.black54),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoryPage(),
                      ),
                    );
                  },
                ),
              ),],
              ),
              SizedBox(height: 20),
              _buildOptionTile(context, "The Mysterious Forest", "forest"),
              _buildOptionTile(context, "The Mysterious Mountain", "mountain"),
              _buildOptionTile(context, "The Futuristic, Dystopian City", "city"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionTile(BuildContext context, String title, String storyType) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white30),
      ),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: ListTile(
        title: Text(title),
        subtitle: Text("Description"),
        trailing: SizedBox(
          width: 90,
          height: 40,
          child: FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () async{

              Center(
                child: CircularProgressIndicator(), // Loading spinner
              );
              await Future.delayed(Duration(seconds: 2));

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GameScreen(selectedStoryType: storyType),
                ),
              );
            },
            child: Text('Select Story'),
          ),
        ),
      ),
    );
  }
}

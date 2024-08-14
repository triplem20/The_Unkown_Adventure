import 'package:destiny_choices/main.dart';
import 'package:flutter/material.dart';
import 'game_screen.dart';

class OptionsScreen extends StatefulWidget {
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/options_destiny.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
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
                  onPressed: () async{
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(color: Colors.blueGrey),
                        );
                      },
                    );

                    await Future.delayed(Duration(seconds: 2));
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoryPage(),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text("Choose Your Adventure",style: TextStyle(color: Colors.white54,),),
              ),
            ],
              ),
              SizedBox(height: 20),
              _buildOptionTile(context,"images/forest_option.jpg", "The Mysterious Forest", "forest","A mystery in an unkown forest"),
              _buildOptionTile(context, "images/mountain_option.jpg","The Mysterious Mountain", "mountain","A mountain adventure to be discovered"),
              _buildOptionTile(context, "images/future_options.jpg","The Futuristic, Dystopian City", "city","Waking up in the futuristic city in the late 2000's"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionTile(BuildContext context,imgUrl, String title, String storyType, String description) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white30),
      ),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(title),
        subtitle: Text(description),
        trailing: SizedBox(
          width: 90,
          height: 40,
          child: FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () async{

              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return Center(
                    child: CircularProgressIndicator(color: Colors.blueGrey),
                  );
                },
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

import 'package:destiny_choices/options_screen.dart';
import 'package:flutter/material.dart';
import 'story_brain.dart';

StoryBrain storyBrain = StoryBrain();

class GameScreen extends StatefulWidget {
  final String selectedStoryType;

  GameScreen({required this.selectedStoryType});

  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  void initState() {
    super.initState();
    // Set the story path in StoryBrain based on the selected story type
    if (widget.selectedStoryType == 'forest') {
      storyBrain.selectStoryPath(0);
    } else if (widget.selectedStoryType == 'mountain') {
      storyBrain.selectStoryPath(1);
    } else if (widget.selectedStoryType == 'city') {
      storyBrain.selectStoryPath(2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/destiny_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: FloatingActionButton(
                      backgroundColor: Colors.blueGrey,
                      child: const Icon(Icons.arrow_back, color: Colors.black54),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OptionsScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: FloatingActionButton(
                      backgroundColor: Colors.blueGrey,
                      child: const Icon(Icons.restart_alt, color: Colors.black54),
                      onPressed: () {
                        setState(() {
                          storyBrain.restart();
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Expanded(
                flex: 12,
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        storyBrain.getStory(),
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 2,
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(context,1);
                    });
                  },
                  backgroundColor: Colors.teal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      storyBrain.getChoice1(),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(context,2);
                      });
                    },
                    backgroundColor: Colors.orangeAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        storyBrain.getChoice2(),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

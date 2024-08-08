import 'package:destiny_choices/options_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  int _storyPath = 0;

  List<Story> _forest = [
    Story(
      storyTitle:
      'You find yourself standing at the edge of a dark, dense forest. The trees are towering, their leaves rustling in the wind, and a faint path winds into the unknown depths. In the distance, you hear the call of a strange bird, unlike anything you have ever heard before. The air is thick with the scent of moss and earth. In your hand, you hold a small, worn map that points to a treasure hidden deep within the forest. But the map is old, and many of the markings have faded. The sun is beginning to set, casting long shadows and adding an eerie glow to the forest. The adventure ahead is shrouded in mystery, and you can almost feel the weight of the forest’s ancient secrets pressing upon you.',
      choice1: 'Follow the path that leads deeper into the forest, trusting the map to guide you.',
      choice2: 'Climb a nearby tree to get a better view of the area and look for any dangers ahead.',
    ),
    Story(
      storyTitle:
      'You decide to follow the path, trusting the map and your instincts. As you walk, the forest seems to close in around you, with trees growing denser and the light dimming further. The path twists and turns, making it hard to gauge how far you have traveled. The air grows cooler, and you hear the occasional rustle of unseen creatures moving through the underbrush. The strange bird’s call fades into the distance, replaced by the soft murmur of the wind through the leaves. After what feels like hours, you come to a fork in the path. The map is too faded to offer guidance, and the two paths look equally worn. The left path is shrouded in shadow, and you can faintly hear whispering voices that seem to beckon you forward. The right path, however, has a faint, golden light filtering through the trees, hinting at a potential clearing or an open area.',
      choice1: 'Follow the left path where the whispering is coming from, intrigued by the mysterious voices.',
      choice2: 'Take the right path toward the faint glimmer of light, hoping it leads to something safe.',
    ),
    Story(
      storyTitle:
      'You decide to climb a nearby tree to get a better view of the area. With careful movements, you scale the trunk and find a sturdy branch to sit on. From your elevated vantage point, the forest below looks like an intricate mosaic of greens and browns. To your right, you notice a glimmer of light through the trees, suggesting a possible clearing or some sort of opening that might reveal more about the forest’s secrets. To your left, the forest appears even denser, with vines and thick undergrowth obscuring the path. As you scan the area further, you spot a small, clear stream flowing gently toward the direction of the light. The stream seems to wind through the forest, and following it might lead you to a safer or more promising part of the forest, or perhaps even to the treasure itself.',
      choice1: 'Follow the glimmer of light you saw through the trees, hoping it leads to something significant.',
      choice2: 'Investigate the stream to see where it leads, thinking it might guide you through the forest.',
    ),
    Story(
      storyTitle:
      'As you follow the left path, the whispering voices grow louder, and you start to feel a chill in the air. The path seems to narrow, and the shadows of the trees take on strange shapes. Suddenly, you find yourself in a small clearing with an ancient stone altar at its center. The altar is covered in moss and inscribed with strange runes. Next to the altar is a small chest, partially buried in the ground. You can hear the whispering coming from the chest itself, as if it’s beckoning you to open it.',
      choice1: 'Open the chest and see what’s inside.',
      choice2: 'Examine the runes on the altar for any clues.',
    ),
    Story(
      storyTitle:
      'You decide to investigate the stream. The water is cool and clear, and the stream winds gently through the forest. As you follow it, you notice that the stream leads to a small, serene pond surrounded by colorful flowers and vibrant vegetation. In the center of the pond, there’s a small, island with what appears to be an old, weathered statue. The statue seems to depict a guardian figure, and there’s a faint, mystical glow emanating from it. The air around the pond feels different, as if charged with a hidden energy.',
      choice1: 'Swim to the island and investigate the statue.',
      choice2: 'Search the area around the pond for any hidden clues or items.',
    ),
    Story(
      storyTitle:
      'As you swim to the island, you notice the water becoming warmer and more vibrant. When you reach the statue, you see that it’s an intricate carving of a mythical creature holding a glowing gem. The gem pulses gently with light, and you can feel a strange connection to it. When you touch the gem, a hidden compartment opens in the statue, revealing an old scroll and a peculiar key. The scroll is covered in ancient symbols, and the key looks like it could fit into a lock.',
      choice1: 'Take the scroll and key and return to the forest.',
      choice2: 'Examine the statue further for any additional secrets.',
    ),
    Story(
      storyTitle:
      'You decide to search the area around the pond. As you explore, you find a small, hidden cave entrance partially obscured by vines. Inside the cave, you discover old, dusty relics and artifacts, including a journal that looks like it might be centuries old. The journal is filled with notes and sketches about the forest and its hidden treasures. One entry mentions a secret passage leading to a hidden chamber beneath the forest.',
      choice1: 'Take the journal and search for the secret passage mentioned.',
      choice2: 'Explore the cave further for more artifacts or clues.',
    ),
    Story(
      storyTitle:
      'With the journal in hand, you begin searching for the secret passage. After some time, you find a concealed entrance beneath a large, ancient tree. You carefully open it and descend into a dark, underground chamber. The chamber is filled with shimmering artifacts, ancient relics, and a large, ornate chest at its center. The chest is locked, but the key you found earlier might fit. The air is thick with the scent of old parchment and dust.',
      choice1: 'Use the key to open the chest and discover what’s inside.',
      choice2: 'Investigate the chamber for any hidden traps or additional clues.',
    ),
    Story(
      storyTitle:
      'You use the key to open the chest, and it creaks open to reveal a treasure trove of gold coins, precious gems, and a beautifully crafted amulet. The amulet has intricate designs and seems to radiate a faint, magical glow. Along with the treasure, you find an ancient parchment detailing the history of the forest and the amulet’s significance. It tells of a powerful artifact that grants the bearer great wisdom and insight.',
      choice1: 'Take the amulet and treasure and return to the surface.',
      choice2: 'Read the parchment in detail and learn more about the artifact.',
    ),
    Story(
      storyTitle:
      'You decide to take the amulet and treasure and make your way back to the surface. As you emerge from the underground chamber, you feel a sense of accomplishment and wonder. The forest now seems different, as if it acknowledges your success. You have uncovered its hidden secrets and emerged victorious. The adventure may have come to an end, but the memories and the amulet’s power will stay with you forever.',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyTitle:
      'The journal you found provides many intriguing details about the forest, but there are still many secrets left to explore. As you finish reading it, you realize that the adventure is far from over. The forest is vast and full of mysteries, and there are many more paths to follow and treasures to discover. With renewed determination, you prepare to set out on a new journey.',
      choice1: 'Restart',
      choice2: '',
    ),

  ];  // Your forest stories here
  List<Story> _mountain = [
    Story(
      storyTitle:
      'You stand at the base of a towering mountain, the peak hidden by thick clouds. The air is cold and crisp, with a hint of snow. A narrow path winds its way up the mountain, but there’s also a dark cave entrance nearby, partially hidden by rocks.',
      choice1: 'Take the path up the mountain, aiming for the peak.',
      choice2: 'Enter the dark cave to see what mysteries it holds.',
    ),
    Story(
      storyTitle:
      'You begin the ascent up the mountain. The path is steep and rocky, and the wind howls as you climb higher. Along the way, you notice an ancient, weathered stone marker with strange symbols.',
      choice1: 'Examine the stone marker for clues about the mountain.',
      choice2: 'Ignore the marker and continue climbing up the path.',
    ),
    Story(
      storyTitle:
      'You step into the dark cave. The air inside is damp and cool. As you venture deeper, you see faint, glowing symbols on the walls, leading further into the darkness.',
      choice1: 'Follow the glowing symbols deeper into the cave.',
      choice2: 'Turn back and exit the cave before it gets too dangerous.',
    ),
    Story(
      storyTitle:
      'The symbols on the marker seem to tell a story of an ancient guardian that protects the mountain. You feel a strange energy as you touch the stone.',
      choice1: 'Continue up the path, feeling emboldened by the story.',
      choice2: 'Look for another route, wary of the guardian’s presence.',
    ),
    Story(
      storyTitle:
      'You continue climbing up the mountain. The path narrows, and you come across a rickety old bridge spanning a deep chasm. The wind whistles through the gaps in the wood.',
      choice1: 'Cross the bridge carefully, hoping it holds your weight.',
      choice2: 'Find another way around, avoiding the dangerous bridge.',
    ),
    Story(
      storyTitle:
      'You follow the glowing symbols deeper into the cave. The air grows colder, and you feel a presence watching you. Suddenly, you find a large stone door with intricate carvings.',
      choice1: 'Push open the door and see what lies beyond.',
      choice2: 'Turn back, feeling that you’re not ready for what’s ahead.',
    ),
    Story(
      storyTitle:
      'You cross the bridge successfully and continue your climb. As you near the peak, the clouds begin to part, revealing a stunning view of the surrounding landscape. At the summit, you find a small, hidden shrine.',
      choice1: 'Approach the shrine and see what it contains.',
      choice2: 'Rest and enjoy the view, content with reaching the summit.',
    ),
    Story(
      storyTitle:
      'You find another path that takes you around the mountain. It’s longer but safer. As you walk, you come across a hidden valley filled with vibrant, untouched nature.',
      choice1: 'Explore the hidden valley, drawn by its beauty.',
      choice2: 'Continue on your path, wanting to reach the peak.',
    ),
    Story(
      storyTitle:
      'You push open the stone door, revealing a hidden chamber filled with ancient relics and a large, glowing crystal in the center.',
      choice1: 'Approach the crystal to uncover its secrets.',
      choice2: 'Take one of the relics and leave the chamber quickly.',
    ),
    Story(
      storyTitle:
      'You rest at the summit, enjoying the tranquility and the sense of accomplishment. The journey was challenging, but the reward is this moment of peace.',
      choice1: 'Restart the adventure from the beginning.',
      choice2: '',
    ),
    Story(
      storyTitle:
      'The hidden valley is a paradise, untouched by time. You find a serene pond surrounded by vibrant flowers. It feels like a secret sanctuary.',
      choice1: 'Stay in the valley, enjoying its peaceful beauty.',
      choice2: 'Return to the mountain path and continue your climb.',
    ),
    Story(
      storyTitle:
      'You approach the crystal, and it pulses with energy. Suddenly, you’re enveloped in light, and a voice echoes in your mind, offering you great power or the knowledge to return safely.',
      choice1: 'Accept the power, becoming the mountain’s new guardian.',
      choice2: 'Choose the knowledge, returning safely with the crystal’s wisdom.',
    ),
  ];  // Your mountain stories here
  List<Story> _city = [
    Story(
      storyTitle:
      'You’re in the heart of Neon City, a sprawling metropolis of towering skyscrapers and glowing billboards. The city is alive with the hum of technology, but beneath its sleek exterior lies a world of corruption and secrets. You’ve just received a mysterious message on your wrist device, instructing you to meet a contact in an abandoned subway station. The message ends with a warning: "Trust no one."',
      choice1: 'Head to the subway station to meet your contact.',
      choice2: 'Ignore the message and investigate who sent it.',
    ),
    Story(
      storyTitle:
      'You arrive at the abandoned subway station, the flickering lights casting eerie shadows on the walls. The air is thick with the smell of oil and rust. You hear footsteps echoing down the tunnel. As you turn the corner, you see a figure waiting in the shadows, their face obscured by a hood.',
      choice1: 'Approach the figure and ask for the information.',
      choice2: 'Hide and observe the figure from a distance.',
    ),
    Story(
      storyTitle:
      'You decide to track down the source of the message. Using your hacking skills, you trace the signal to an old, derelict building on the outskirts of the city. The building is a known hideout for a notorious hacker group called "The Ghosts."',
      choice1: 'Infiltrate the building to confront the hackers.',
      choice2: 'Contact an old ally for help before making a move.',
    ),
    Story(
      storyTitle:
      'You approach the figure, and they hand you a small data chip. "This contains everything you need to know," they say in a low voice. Suddenly, the sound of approaching drones fills the air.',
      choice1: 'Take the chip and run, trying to escape the drones.',
      choice2: 'Confront the figure, demanding to know what’s going on.',
    ),
    Story(
      storyTitle:
      'You stay hidden, watching the figure. They seem nervous, constantly looking over their shoulder. After a few minutes, they throw something into the shadows and quickly leave.',
      choice1: 'Retrieve the object they threw and investigate.',
      choice2: 'Follow the figure to see where they go next.',
    ),
    Story(
      storyTitle:
      'You infiltrate the building, sneaking past guards and security systems. Inside, you find a room filled with monitors displaying various parts of the city. On one screen, you see a live feed of the abandoned subway station, with your contact in view.',
      choice1: 'Watch the feed to gather more information.',
      choice2: 'Shut down the system to cover your tracks and leave.',
    ),
    Story(
      storyTitle:
      'You call your old ally, a former cop turned private investigator. They agree to help and meet you near the hideout. Together, you formulate a plan to take down the hacker group.',
      choice1: 'Execute the plan and take on the hackers.',
      choice2: 'Set up surveillance to gather more intel before acting.',
    ),
    Story(
      storyTitle:
      'You run from the drones, but they quickly close in. Just as they’re about to capture you, the figure from the subway station appears, disabling the drones with a small device. "Come with me if you want to survive," they say.',
      choice1: 'Follow the figure to safety.',
      choice2: 'Refuse and try to escape on your own.',
    ),
    Story(
      storyTitle:
      'You confront the figure, but they suddenly attack you. After a brief struggle, you manage to disarm them and demand answers. They reveal that the data chip contains critical information about a city-wide conspiracy.',
      choice1: 'Take the chip and uncover the conspiracy.',
      choice2: 'Hand over the chip to the authorities and walk away.',
    ),
    Story(
      storyTitle:
      'You retrieve the object from the shadows. It’s a small, encrypted device. As you examine it, a holographic map of the city appears, highlighting several key locations.',
      choice1: 'Follow the map to the first location.',
      choice2: 'Attempt to decrypt the device for more information.',
    ),
    Story(
      storyTitle:
      'You follow the figure through the city, avoiding security patrols. Eventually, they lead you to an underground resistance hideout. The leader of the resistance welcomes you, saying, "We’ve been expecting you."',
      choice1: 'Join the resistance and fight against the city’s corruption.',
      choice2: 'Decline the offer and continue your mission alone.',
    ),
    Story(
      storyTitle:
      'You watch the monitors and discover that the hacker group has been monitoring key figures in the city, including you. They seem to know your every move.',
      choice1: 'Shut down the system and leave before they discover you.',
      choice2: 'Try to hack into their network to learn more about their plans.',
    ),
    Story(
      storyTitle:
      'You execute the plan with your ally, taking down the hackers. However, in the process, you discover that the hacking group was actually working to expose corruption at the highest levels of the city government.',
      choice1: 'Join forces with the hackers to continue their mission.',
      choice2: 'Destroy all evidence and leave, not wanting to get involved.',
    ),
    Story(
      storyTitle:
      'You follow the map to the first location, which turns out to be an old data center. Inside, you find a hidden terminal that offers access to the city’s central network.',
      choice1: 'Access the network and search for critical data.',
      choice2: 'Set up a backdoor to use the network later and leave.',
    ),
    Story(
      storyTitle:
      'You try to decrypt the device, but it triggers a security alert. Within minutes, a group of armed enforcers arrives at your location.',
      choice1: 'Fight your way out and escape.',
      choice2: 'Surrender and hope to negotiate your release.',
    ),
    Story(
      storyTitle:
      'You join the resistance, and together you uncover a vast conspiracy that controls the entire city. Your skills and the information you’ve gathered make you a key player in the upcoming battle for freedom.',
      choice1: 'Lead the resistance in their fight for the city.',
      choice2: 'Remain in the shadows, supporting from behind the scenes.',
    ),
    Story(
      storyTitle:
      'You decline the offer and continue on your own, but the resistance leader warns you that the city’s powers will stop at nothing to maintain control.',
      choice1: 'Go underground to avoid detection and plan your next move.',
      choice2: 'Continue gathering evidence to expose the truth.',
    ),
  ];  // Your city stories here

  List<Story> _getCurrentStoryPath() {
    switch (_storyPath) {
      case 1:
        return _mountain;
      case 2:
        return _city;
      default:
        return _forest;
    }
  }

  String getStory() {
    return _getCurrentStoryPath()[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _getCurrentStoryPath()[_storyNumber].choice1;
  }

  String getChoice2() {
    return _getCurrentStoryPath()[_storyNumber].choice2;
  }

  void nextStory(BuildContext context,int choiceNumber) {
    List<Story> currentPath = _getCurrentStoryPath();

    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 6;
    } else if (choiceNumber == 1 && _storyNumber == 3) {
      _storyNumber = 7;
    } else if (choiceNumber == 2 && _storyNumber == 3) {
      _storyNumber = 8;
    } else if (choiceNumber == 1 && _storyNumber == 4) {
      _storyNumber = 9;
    } else if (choiceNumber == 2 && _storyNumber == 4) {
      _storyNumber = 10;
    } else if (choiceNumber == 1 && _storyNumber == 5) {
      _storyNumber = 11;
    } else if (choiceNumber == 2 && _storyNumber == 5) {
      _storyNumber = 12;
    } else if (_storyNumber >= 7) {
      showCompletionAlert(context);
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber < 7;
  }

  void selectStoryPath(int path) {
    _storyPath = path;
    restart();
  }
  void showCompletionAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Story Completed!",
            style: TextStyle(color: Colors.white54),
          ),
          content: Text(
            "Congratulations on finishing the story!",
            style: TextStyle(color: Colors.white54),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                "Done",
                style: TextStyle(color: Colors.greenAccent),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OptionsScreen(),
                  ),
                ); // Close the alert dialog
              },
            ),
          ],
        );
      },
    );
  }
}
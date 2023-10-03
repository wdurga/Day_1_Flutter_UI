import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ui_1/utilities/emoticon_faces.dart';
import 'package:flutter_ui_1/utilities/exercise_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(children: [
          // greetings row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Continua Creciendo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "24 April, 2023",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    // Notification
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                // search bar

                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Searcheess",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // How you doing?

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How You Doing ?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                // 4 different faces
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        EmoticonFaces(
                          emoticon_faces: "emo",
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Noo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFaces(
                          emoticon_faces: "emo",
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Noo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFaces(
                          emoticon_faces: "emo",
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Noo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFaces(
                          emoticon_faces: "emo",
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Noo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // Exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),
                    // listview of exercises
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            exerciseName: 'Reading Skill',
                            exerciseNumber: 18,
                            icon: Icons.favorite,
                            iconColor: Colors.green,
                          ),
                          ExerciseTile(
                             exerciseName: 'Writing Skill',
                            exerciseNumber: 18,
                            icon: Icons.person,
                            iconColor: Colors.orange,
                          ),
                          ExerciseTile(
                            exerciseName: 'Translating Skill',
                            exerciseNumber: 18,
                            icon: Icons.star,
                            iconColor: Colors.blue,
                          ),
                          ExerciseTile(
                             exerciseName: 'Speaking Skill',
                            exerciseNumber: 18,
                            icon: Icons.speaker_group,
                            iconColor: Colors.pink,
                          ),
                          ExerciseTile(
                             exerciseName: 'Exercise Skill',
                            exerciseNumber: 18,
                            icon: Icons.social_distance_sharp,
                            iconColor: Colors.purple,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

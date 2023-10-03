import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class ExerciseTile extends StatelessWidget {

  final icon;
  final String exerciseName;
  final int exerciseNumber;
  final iconColor;

  const ExerciseTile({super.key,
  
   required this.icon,
    required this.exerciseName, 
    required this.exerciseNumber,
    required this.iconColor,
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: iconColor,
                            ),
                            padding: EdgeInsets.all(16),
                            child: Icon(icon,
                            color: Colors.white,),
                            ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(exerciseName,
                      style: TextStyle(
                        fontSize: 16,
                      fontWeight: FontWeight.bold
                      ),
                          ),
                          SizedBox(height: 5,),
                           Text(
                            exerciseNumber.toString() + ' Exercises',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      
                      ),
                          ),
                        ],
                      )
                        ],
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                 
                ),
    );
    
  }
}
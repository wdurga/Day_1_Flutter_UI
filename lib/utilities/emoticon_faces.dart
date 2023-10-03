import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EmoticonFaces extends StatelessWidget {
  final String emoticon_faces;
  
  const EmoticonFaces({
    super.key,
    required this.emoticon_faces,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emoticon_faces,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

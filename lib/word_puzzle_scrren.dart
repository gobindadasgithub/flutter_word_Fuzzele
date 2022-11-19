import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' as Words;

class WordPuzzleScren extends StatefulWidget {
  const WordPuzzleScren({Key? key}) : super(key: key);

  @override
  State<WordPuzzleScren> createState() => _WordPuzzleScrenState();
}

class _WordPuzzleScrenState extends State<WordPuzzleScren> {
  @override
  void initState() {
    print(Words.all.length);
    super.initState();
  }
  bool hasQuizStarted=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: hasQuizStarted? Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

          ],
        ),):
        Center(child: ElevatedButton(
          onPressed: (){
            setState(() {
              hasQuizStarted=true;
            });
          },
          child:const Text('START') ,
        )),


      ),
    );
  }
}

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(randomWord.toString()),
    );
  }
}

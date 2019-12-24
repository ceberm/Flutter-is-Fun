import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  //final List<WordPair> _suggestions = <WordPair>[];
  //final TextStyle _biggerFont = const TextStyle(fontSize: 18); 
/*
    Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
  */
/*
Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }
    */
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome to Flutter')),
        body: Center(child: RandomWords()),
        //body: _buildSuggestions(),
    ));
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = WordPair.random();

    return Text(
      wordPair.asPascalCase, 
      style: TextStyle(
          //color: Colors.black,
          fontFamily: 'Raleway',
          decoration: TextDecoration.underline,
          decorationColor: Colors.red[700],
          decorationStyle: TextDecorationStyle.dotted,
          fontSize: 40,
          fontFamilyFallback: <String>[
            'Noto Sans CJK SC',
            'Noto Color Emoji',
          ],
        )
    );
  }
  
}

import 'package:english_words/english_words.dart' as Words;
List<String> level1list=[];
List<String> level2list=[];
List<String> level3list=[];

List<String> genaratotlist({required int lenght}){
  List<String> wordlist=Words.nouns;
 final templist= wordlist.where((element) => element.length==lenght).toList();
 templist.shuffle();
 return templist.sublist(0,templist.length>10? 10:templist.length-1);
}

String shuffleword(String word){
  String shuffledword='';
  List<String> templist=word.split('');
  templist.shuffle();
  shuffledword=templist.join('');
  return shuffledword;
}
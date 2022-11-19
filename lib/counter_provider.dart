import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_puzzle/provider.dart';

class CounterProvider extends StatelessWidget {
  const CounterProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   ValueNotifier<int> count=ValueNotifier(0);
    return Scaffold(
      body: Center(
        child: Consumer<CouProvider>(
          builder:(context,provider,_)=> Text(
            '${provider.counter}',style: Theme.of(context).textTheme.headline1,),
        ),
   ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        Provider.of<CouProvider>(context,listen: false)
            .increseCounter();
      },
        child: const Icon(Icons.add),
      ),
    );
  }
}

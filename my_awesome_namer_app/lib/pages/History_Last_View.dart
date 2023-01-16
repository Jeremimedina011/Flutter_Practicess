import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_awesome_namer_app/statemanager/my_app_state.dart';
import 'package:provider/provider.dart';

class HistoryLastView extends StatefulWidget {
  const HistoryLastView({super.key});

  @override
  State<HistoryLastView> createState() => _HistoryLastViewState();
}

class _HistoryLastViewState extends State<HistoryLastView> {
  final Key = GlobalKey();
  static const Gradient _maskingGradient = LinearGradient(
    colors: [Colors.transparent, Colors.black],
    stops: [0.0, 0.5],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();
    appState.historyListKey = Key;

    return ShaderMask(
      shaderCallback: (bounds) => _maskingGradient.createShader(bounds),
      blendMode: BlendMode.dstIn,
      child: AnimatedList(
        key: Key,
        reverse: true,
        padding: EdgeInsets.only(top: 100),
        initialItemCount: appState.History.length,
        itemBuilder: (context, index, animation) {
          final Pair = appState.History[index];
          return SizeTransition(sizeFactor: 
          animation,
          child: Center(child: TextButton.icon(onPressed: (){
            appState.toggleFavorite(Pair);
          },
          icon: appState.favorites.contains(Pair)?
          Icon(Icons.favorite,size: 12,)
          :SizedBox(),
          label: Text(
            Pair.asLowerCase, semanticsLabel: Pair.asPascalCase,
          ),
          )),);
        },
      ),
    );
  }
}

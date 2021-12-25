import 'package:flutter/material.dart';
import 'package:tictac/model/Game.dart';
import 'package:tictac/model/Plyers.dart';
import 'package:tictac/shared/ColorManger.dart';
import 'package:tictac/shared/TextManger.dart';
import 'package:tictac/shared/ValueManger.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = false;
  String activeplyer = "X";
  int turn = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SwitchListTile.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched == value;
                });
              },
              activeColor: Theme.of(context).accentColor,
              activeTrackColor: Theme.of(context).accentColor,
              inactiveThumbColor: Theme.of(context).primaryColor,
              inactiveTrackColor: Theme.of(context).primaryColor,
              title: Text(
                textManger.Twoplyer,
                style: isSwitched
                    ? Theme.of(context).textTheme.bodyText1
                    : Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              textManger.YourTrun + activeplyer.toUpperCase(),
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                mainAxisSpacing: apppadding.p8,
                crossAxisSpacing: apppadding.p8,
                children: List.generate(
                    9,
                    (index) => InkWell(
                          onTap: ontapM(index),
                          child: childinkw(index),
                        )),
              ),
            ),
            ElevatedButton.icon(
              onPressed: elevtOnpreseed,
              icon: Icon(Icons.replay),
              label: Text(textManger.Repeat),
            ),
          ],
        ),
      ),
    );
  }

  elevtOnpreseed() {
    setState(() {
      player.plyerX = [];
      player.plyerY = [];
      isSwitched = false;
      activeplyer = "X";
      turn = 0;
    });
  }

  Widget childinkw(int index) {
    return Container(
      decoration: BoxDecoration(
          color: colorManger.brightpink,
          borderRadius: BorderRadius.all(Radius.circular(appsize.s4))),
      child: Center(
        child: Text(
          player.plyerX.contains(index)
              ? textManger.X
              : player.plyerY.contains(index)
                  ? textManger.O
                  : "",
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  ontapM(int index) {
    Game.playGame(index, activeplyer);
    setState(() {
      activeplyer = activeplyer == textManger.X ? textManger.O : textManger.X;
    });
  }
}

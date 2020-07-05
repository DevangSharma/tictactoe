import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int boolToInt(bool a) => a ? 1 : 0;

  List<int> tile;

  AssetImage zero = AssetImage("images/o.png");
  AssetImage cross = AssetImage("images/x.png");
  AssetImage blank = AssetImage("images/dot.png");
  List <AssetImage> play;

  bool zeroTurn = false;

  changeState(i)
  {
    setState(() {
     tile[i] = boolToInt(zeroTurn) + 1;
     play[i] = getimage(tile[i]);
    
     zeroTurn = !zeroTurn;
    });
  }

  AssetImage getimage(i)
  {
      switch(i)
      {
        case 0:
          return blank;
          break;

        case 1:
          return cross;
          break;

        case 2:
          return zero;
          break;
      }
  }

  @override
  void initState() {

    super.initState();
    setState(() {
      tile = [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0, 

      ];

      play = [
        blank,
        blank,
        blank,
        blank,
        blank,
        blank,
        blank,
        blank,
        blank,
      ];});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              
              child: GridView.builder(
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  ),
                  
                itemBuilder: (context,i) => SizedBox(
                    height: 10.0,
                    width: 10.0,
                    child: MaterialButton(
                      child: Image(image: play[i]),
                      onPressed: (){
                        changeState(i);
                      },
                      ),
                  ),

                itemCount: 9,

            ),
          )
      ],
      ),
    );
  }
}
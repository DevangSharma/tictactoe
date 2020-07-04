import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  var tile = [
    0,0,0,0,0,0,0,0,0
  ];

  AssetImage zero = AssetImage("images/o.png");
  AssetImage cross = AssetImage("images/x.png");
  AssetImage blank = AssetImage("images/dot.png");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                      onPressed: () {},
                      child: Image(image: blank),
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
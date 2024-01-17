import 'package:flutter/material.dart';

void main() {
  runApp(BasskeballApp()
  );
}

class BasskeballApp extends StatefulWidget {
  BasskeballApp();

  @override
  State<BasskeballApp> createState() => _BasskeballAppState();
}

class _BasskeballAppState extends State<BasskeballApp> {
  int teamAPoint=0;

  int teamBPoint=0;

void addOnePoint(){

  print('add one point');
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A',style: TextStyle(fontSize: 35),),
                    SizedBox(
                      height: 10,
                    ),
                    Text('$teamAPoint',
                      style: TextStyle(
                          fontSize: 150
                      ),
                    ),
                    SizedBox(height: 10,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(140,50),
                    ),
                      onPressed: ()
                      {
                        setState(() {

                        });
                        teamAPoint++;
                      print(teamAPoint);
                      },
                      child: Text('Add 1 Point',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(140,50),
                    ),
                      onPressed: (){
                        setState(() {

                        });
                        teamAPoint+=2;
                        print(teamAPoint);
                      },
                      child: Text('Add 2 Point',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(140,50),
                    ),
                      onPressed: (){
                        setState(() {

                        });
                        teamAPoint+=3;
                        print(teamAPoint);
                      },
                      child: Text('Add 3 Point',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                    //SizedBox(height: 10,),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 60,
                    endIndent: 60,
                  ),
                ),

                Column(
                  children: [
                    Text('Team B',style: TextStyle(fontSize: 35),),
                    SizedBox(
                      height: 10,
                    ),
                    Text('$teamBPoint',
                      style: TextStyle(
                          fontSize: 150
                      ),
                    ),
                    SizedBox(height: 10,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(140,50),
                    ),
                      onPressed: (){
                        setState(() {

                        });
                        teamBPoint++;
                        print(teamBPoint);
                      },
                      child: Text('Add 1 Point',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(140,50),
                    ),
                      onPressed: (){
                        setState(() {

                        });
                        teamBPoint+=2;
                        print(teamBPoint);
                      },
                      child: Text('Add 2 Point',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(140,50),
                    ),
                      onPressed: (){
                        setState(() {

                        });
                        teamBPoint+=3;
                        print(teamBPoint);
                      },
                      child: Text('Add 3 Point',
                        style: TextStyle(
                            color: Colors.black,
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: Size(140,50),
            ),
              onPressed: (){
              setState(() {

                teamAPoint=0;
                teamBPoint=0;
              });
              },
              child: Text('Reset',
                style: TextStyle(
                    color: Colors.black,

                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}




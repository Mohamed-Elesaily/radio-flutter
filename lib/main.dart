import 'dart:io';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool display = false;

YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'Z2jkB-oIEkQ',
    flags: YoutubePlayerFlags(
      isLive: true,
    ),
);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title:'radio',
      theme: ThemeData(brightness: Brightness.dark),
    
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.exit_to_app),
          backgroundColor: Colors.grey,
          onPressed: ()=> exit(0),
          tooltip: 'Close app',
          
            
         
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                YoutubePlayer(
    controller: _controller,
    liveUIColor: Colors.amber,
    
),
Container(
  height: 250,
  width: double.infinity,
  color:Colors.grey[850]

),
 Center(
   child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/app.png"),
                radius: 150,
              ),
 ),
              ],
            ),
           
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text("FM 98.2",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 50
              ),
              
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FloatingActionButton(
              child: shape(),
              backgroundColor: Colors.grey,
              
              onPressed: (){
                setState(() {
                  display = !display;
                
                });
              },
            ),
    

          ],
        ),
      ),
    );
  }

  Icon shape(){
    if(display == false){
      
         _controller.pause();
    
     
      return Icon(Icons.radio_button_checked);
    }else if(display == true){
      
         _controller.play();
     
     
      return Icon(Icons.pause_circle_filled);
    }
  }
  

}
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

// YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: 'Z2jkB-oIEkQ',
//     flags: YoutubePlayerFlags(
//       isLive: true,
//     ),
// );
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp( 
//     home:Scaffold(
//         appBar: AppBar(
//           title: Text(''),
//         ),
//         body: ListView(
//             children: <Widget>[
//     YoutubePlayer(
//     controller: _controller,
//     liveUIColor: Colors.amber,
    
// ),
//             FloatingActionButton(onPressed: 
//             (){
//               _controller.pause();
//               _controller.mute();
//             })
//             ],

//         )
        
//         ));
//   }
// }

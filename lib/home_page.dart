import 'package:about_page/about.dart';
import 'package:about_page/about_team.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sellectedIndex=0;
  List<Widget>page=[About(),TeamPage()]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return [
                  PopupMenuItem<int>(
                      value: 0,
                      child: Text("About US"),
                  ),

                  PopupMenuItem<int>(
                      value: 1,
                      child: Text("About Team"),
                  ),                  
              ];              
          },

          onSelected:(value){
            if(value == 0){
                sellectedIndex=0;
                setState(() {});
            }if(value == 1){
                sellectedIndex=1;
                setState(() {});
            }
          }
        
          )
        ],
      ),
      body: page[sellectedIndex],
    );
  }
}
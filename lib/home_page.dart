import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate(
              [
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.yellow,
                ),
              ]
            ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              (_,index){
              return Container(
                color: Colors.red,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(15),
                child: Text('SliverList 1: $index'),
              );
            },childCount: 40,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
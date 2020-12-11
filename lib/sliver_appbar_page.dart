import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  SliverAppBarPage({Key key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: CustomScrollView(
         slivers: [
           SliverAppBar(
             pinned: true,
             floating: true,
             //title: Text('Slivers'),
             leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){},),
             actions: [
               IconButton(icon: Icon(Icons.search), onPressed: (){}),
               IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
             ],
             expandedHeight: 200,
             flexibleSpace: FlexibleSpaceBar(
               title: Text('Slivers with flutter'),
               centerTitle: true,
               background: Stack(
                 fit: StackFit.expand,
                 children: [
                   Image.network('https://www.lacasadeel.net/wp-content/uploads/2019/11/marvel-quien-es-adam-warlock-cover.jpg',
                   fit: BoxFit.cover,
                   ),
                   DecoratedBox(decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black26,
                        Colors.black
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    ) 
                   ))
                 ],
               ),
             ),
           ),
           SliverList(delegate: SliverChildBuilderDelegate((_, index){
             return ListTile(
               title: Text('item $index'),
             );
           },childCount: 40),)
         ],
       ),
    );
  }
}
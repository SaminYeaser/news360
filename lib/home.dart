import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('News'),
            Text('360',
              style: TextStyle(
                  color: Colors.blue
              ),)
          ],
        ),
        elevation: 0.0,
      ),
      body: Container(
        
      ),
    );
  }
}
class CategoryTile extends StatelessWidget {
  final  imageURL, cateoryName;
  CategoryTile({this.imageURL, this.cateoryName});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.network(imageURL, width: 120, height: 60),

        ],
      ),
    );
  }
}
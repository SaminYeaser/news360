import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news360/helper/data.dart';
import 'package:news360/model/Category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategory();
  }
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
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 60,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index){
                  return CategoryTile(
                    imageURL: categories[index].imageURL,
                    cateoryName: categories[index].CategoryName,
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
class CategoryTile extends StatelessWidget {
  final  imageURL, cateoryName;
  CategoryTile({this.imageURL, this.cateoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  imageURL,
                  width: 120,
                  height: 60,
                  fit: BoxFit.cover,)),
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(
                cateoryName,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class BlogTile extends StatelessWidget {
  final String imageURL, title, description;
BlogTile({@required this.imageURL,@required this.title,@required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(imageURL),
          Text(title),
          Text(description)
        ],
      ),
    );
  }
}

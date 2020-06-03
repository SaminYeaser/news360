import 'package:news360/model/Category_model.dart';
List<CategoryModel> getCategory(){
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  //1
  categoryModel.CategoryName = 'Business';
  categoryModel.imageURL = 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  category.add(categoryModel);
}
// ignore_for_file: unnecessary_new, unused_local_variable, body_might_complete_normally_nullable

import '../model/categories_mdoel.dart';

List<Category>? getCategories() {
  List<Category> categories = [];
  Category category = new Category();


  category.imgUrl ="https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.categoryname = "Street Art";
  categories.add(category);
  category = new Category();

  //
  category.imgUrl =
      "https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.categoryname = "Wild Life";
  categories.add(category);
  category = new Category();

  //
  category.imgUrl =
      "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.categoryname = "Nature";
  categories.add(category);
  category = new Category();

  //
  category.imgUrl =
      "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.categoryname = "City";
  categories.add(category);
  category = new Category();

  //
  category.imgUrl =
      "https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  category.categoryname = "Motivation";

  categories.add(category);
  category = new Category();

  //
  category.imgUrl =
      "https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.categoryname = "Bikes";
  categories.add(category);
  category = new Category();

  //
  category.imgUrl =
      "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  category.categoryname = "Cars";
  categories.add(category);
  category = new Category();

  return categories;
}

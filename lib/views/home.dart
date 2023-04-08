// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_call_super, prefer_collection_literals, unnecessary_new, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:wallpaper_app/data/data.dart';
import 'package:wallpaper_app/widgets/widget.dart';

import '../model/categories_mdoel.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Category> categories = [];

  @override
  void initState() {
    categories = getCategories()!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: BrandName(),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfff5f8fd),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24),
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Wallpaper',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index)
                     {
                      return CategoryTile(
                          imgUrl: categories[index].imgUrl,
                          title: categories[index].categoryname);
                    }),
              )
            ],
          ),
        ));
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.imgUrl, required this.title});
  final String imgUrl, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          
           ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(imgUrl,fit: BoxFit.cover,height: 60,width: 110,)),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,),
            alignment: Alignment.center,
            height: 60,width: 110,
            child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),))
        ],
      ),
    );
  }
}

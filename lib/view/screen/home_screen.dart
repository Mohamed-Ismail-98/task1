import 'package:flutter/material.dart';
import 'package:untitled1/view/widget/custom_home_category.dart';
import 'package:untitled1/view/widget/custom_home_list.dart';

import '../widget/custom_articles.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: const Text("News"),),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomHome(),),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Articles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
            ),
          ),
          SliverToBoxAdapter(child: CustomArticlesList(),)
        ],
      ),
    );
  }
}

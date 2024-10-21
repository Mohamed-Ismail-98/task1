import 'package:flutter/material.dart';

import 'custom_articles.dart';
class CustomArticlesList extends StatelessWidget {
  const CustomArticlesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 6,
      itemBuilder:(context,index)=> CustomArticles(),
    );
  }
}

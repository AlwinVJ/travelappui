import 'package:flutter/material.dart';
import '../widgets/post_app_bar.dart';
import '../widgets/post_bottom_bar.dart';
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg2.jpg'),
              fit: BoxFit.cover,
              opacity: 0.9)),
      child: const Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(90),
      child: PostAppBar()),
      bottomNavigationBar: PostBottomBar(),),
    );
  }
}

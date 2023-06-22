import 'package:flutter/material.dart';

import '../../category/category_screen.dart';
import '../widget/custom_app_bar.dart';
import '../widget/home_post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const Column(
            children: [
              CategoryScreen(),
              HomePostWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

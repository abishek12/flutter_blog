import 'package:flutter/material.dart';
import 'package:flutter_blog/home/widget/custom_app_bar.dart';

import '../widget/home_post_image_widget.dart';

class DetailScreen extends StatelessWidget {
  final dynamic data;
  const DetailScreen({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: data.title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePostImageWidget(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.7,
              image: data.urlToImage ??
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',
            ),
            Text(data.title),
            Text(data.content)
          ],
        ),
      ),
    );
  }
}

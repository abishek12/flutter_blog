import 'package:flutter_blog/model/post_model.dart';
import 'package:http/http.dart' as http;

class PostServices {
  Future<PostModel> fetchItems() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://newsapi.org/v2/top-headlines?category=business&apiKey=aca67592169e4d72ab41f4418e1a59ca'),
      );
      if (response.statusCode == 200) {
        final items = response.body;
        final postModel = postModelFromJson(items.toString());
        return postModel;
      } else {
        throw 'Something went wrong';
      }
    } catch (error) {
      throw 'Error: $error';
    }
  }
}

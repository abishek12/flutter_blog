import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/post_cubit.dart';
import '../screen/detail_screen.dart';
import 'home_post_image_widget.dart';

class HomePostWidget extends StatelessWidget {
  const HomePostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<PostCubit, PostState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is PostLoaded) {
            return ListView.builder(
              itemCount: state.postModel.totalResults,
              itemBuilder: (context, index) {
                final data = state.postModel.articles[index];
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.40,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(data: data),
                      ),
                    ),
                    child: Card(
                      child: Row(
                        children: [
                          HomePostImageWidget(
                            image: data.urlToImage ??
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 16.0),
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Text(
                                      data.title,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          if (state is PostError) {}
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

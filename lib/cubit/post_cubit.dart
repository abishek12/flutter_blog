import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/post_model.dart';
import '../services/post_services.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial()) {
    fetchItems();
  }

  Future<void> fetchItems() async {
    PostServices services = PostServices();
    final items = await services.fetchItems();
    emit(PostLoaded(postModel: items));
  }
}

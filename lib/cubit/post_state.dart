part of 'post_cubit.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostLoaded extends PostState {
  final PostModel postModel;
  const PostLoaded({
    required this.postModel,
  });
  @override
  List<Object> get props => [];
}

class PostError extends PostState {
  final String errMsg;
  const PostError({
    required this.errMsg,
  });
}

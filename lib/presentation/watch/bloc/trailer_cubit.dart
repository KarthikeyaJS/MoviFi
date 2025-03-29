import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movifi/core/entity/trailer.dart';
import 'package:movifi/domain/movie/usecases/get_movie_trailer.dart';
import 'package:movifi/presentation/watch/bloc/trailer_state.dart';
import 'package:movifi/service_locator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerCubit extends Cubit<TrailerState> {
  TrailerCubit() : super(TrailerLoading());

  void getMovieTrailer(int movieId) async {
    var returnedData = await sl<GetMovieTrailerUseCase>().call(params: movieId);

    returnedData.fold(
      (error) {
        emit(FailuerLoadTrailer(errorMessage: error));
      },
      (data) async {
        TrailerEntity trailerEntity = data;
        YoutubePlayerController controller = YoutubePlayerController(
          initialVideoId: trailerEntity.key!,
          flags: const YoutubePlayerFlags(autoPlay: false),
        );

        emit(TrailerLoaded(youtubePlayerController: controller));
      },
    );
  }
}

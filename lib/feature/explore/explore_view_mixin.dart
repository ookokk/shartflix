part of 'explore_view.dart';

mixin _ExploreViewMixin on ConsumerState<ExploreView> {
  var _currentIndex = 0;

  void _onFavorite(MovieModel? movie) {
    if (movie!.id == null) {
      return;
    }
    ref.read(exploreProvider.notifier).likeMovie(movie);
  }

  @override
  void initState() {
    super.initState();
  }
}

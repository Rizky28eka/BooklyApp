import 'package:go_router/go_router.dart';
import '../features/home/presentaion/veiws/book_details_view.dart';
import '../features/home/presentaion/veiws/home_view.dart';
import '../features/search/presentation/views/search_view.dart';
import '../features/splash/presentation/view/splash_view.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Routes.homeRotue,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Routes.bookDetailsRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: Routes.searchRoute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

abstract class Routes {
  static const String splashRoute = '/';
  static const String homeRotue = '/HomeRoute';
  static const String bookDetailsRoute = '/BookDetailsRoute';
  static const String searchRoute = '/SearchRoute';
}

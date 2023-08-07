
import 'package:go_router/go_router.dart';
import 'package:widgets/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const MenuScreen(),
    ),

    GoRoute(
      path: '/material-banner',
      builder: (context, state) => const MaterialBannerWidget(),
    ),

    GoRoute(
      path: '/preferred-size',
      builder: (context, state) => const PreferrefSizeWidget(),
    ),
    
    GoRoute(
      path: '/long-press-draggable',
      builder: (context, state) => const LongPressDraggableWidget(),
    ),
  ]
);
import 'package:flutter/material.dart';
import 'package:flutter_laboratorio/presentation/screens/home/home_screen.dart';
import 'package:flutter_laboratorio/presentation/screens/noticias/noticias_screen.dart';
import 'package:flutter_laboratorio/presentation/screens/podcast/podcast_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'noticias',
          builder: (BuildContext context, GoRouterState state) {
            return const NoticiasScreen();
          },
        ),
        GoRoute(
          path: 'podcast',
          builder: (BuildContext context, GoRouterState state) {
            return const PodcastScreen();
          },
        ),
      ],
    ),
  ],
);

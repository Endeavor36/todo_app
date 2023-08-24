import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/models/collection.dart';
import 'package:todo_app/screens/collections/edit_collection_screen.dart';
import 'package:todo_app/screens/tasks/add_todo_screen.dart';
import 'package:todo_app/screens/collections/collection_details_screen.dart';
import 'package:todo_app/screens/collections/collections_screen.dart';
import 'package:todo_app/screens/notes/notes_screen.dart';
import 'package:todo_app/screens/tasks/tasks_screen.dart';

import '../models/todo.dart';
import '../screens/home_screen.dart';

enum AppRoute {
  homeScreen,
  addTodoScreen,
  collectionsScreen,
  notesScreen,
  tasksScreen,
  collectionDetailsScreen,
  editCollectionScreen,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        name: AppRoute.homeScreen.name,
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: AppRoute.tasksScreen.name,
        path: '/tasks',
        builder: (context, state) => const TasksScreen(),
        routes: [
          GoRoute(
            name: AppRoute.addTodoScreen.name,
            path: 'add-todo',
            builder: (context, state) {
              if (state.extra != null) {
                final todo = state.extra as Todo;
                return AddTodoScreen(
                  todo: todo,
                );
              }
              return const AddTodoScreen();
            },
          ),
        ],
      ),
      GoRoute(
        name: AppRoute.collectionsScreen.name,
        path: '/collections',
        builder: (context, state) => const CollectionsScreen(),
        routes: [
          GoRoute(
            name: AppRoute.collectionDetailsScreen.name,
            path: 'collection-details',
            builder: (context, state) {
              final id = state.extra as String;
              return CollectionDetailsScreen(id: id);
            },
            routes: [
              GoRoute(
                name: AppRoute.editCollectionScreen.name,
                path: 'edit-collection',
                builder: (context, state) {
                  final collection = state.extra as Collection;
                  return EditCollectionScreen(collection: collection);
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppRoute.notesScreen.name,
        path: '/notes',
        builder: (context, state) => const NotesScreen(),
      ),
    ],
  );
});

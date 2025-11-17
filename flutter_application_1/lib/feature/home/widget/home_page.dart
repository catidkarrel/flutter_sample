import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/provider/books_provider.dart';
import 'package:flutter_application_1/feature/home/state/books_state.dart';
// Ensure booksNotifierProvider is exported from books_provider.dart
import 'package:flutter_application_1/shared/http/app_exception.dart';
import 'package:flutter_application_1/shared/route/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Import RowBookWidget if defined elsewhere
import 'package:flutter_application_1/feature/home/widget/row_book_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("home".tr()),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.adjust),
            onPressed: () {
              ref.read(routerProvider).go(SignInRoute.path);
              //ref.read(authNotifierProvider.notifier).logout();
            },
          ),
        ],
      ),
      body: _widgetContent(context, ref),
    );
  }

  Widget _widgetLoading(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text('loading'.tr()),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    final state = ref.watch(booksNotifierProvider);

    return state.when(
      loading: () {
        return _widgetLoading(context, ref);
      },
      booksLoaded: (books) {
        return ListView.builder(
            itemCount: books.length,
            itemBuilder: (BuildContext context, int index) {
              return RowBookWidget(book: books[index]);
            });
      },
      error: (AppException error) {
        return _widgetLoading(context, ref);
      },
    );
  }
}
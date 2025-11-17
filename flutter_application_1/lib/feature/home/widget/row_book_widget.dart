import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/model/book.dart';

class RowBookWidget extends StatelessWidget {
  final Book book;

  const RowBookWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: ListTile(
        leading: Text(
          '${book.id}',
          style: const TextStyle(fontSize: 10),
        ),
        title: Text(book.title ?? ''),
        isThreeLine: true,
        subtitle: Text(book.subTitle ?? ''),
        dense: true,
      ),
    );
  }
}
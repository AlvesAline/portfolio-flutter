import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:portfolio/pages/github_pages.dart';

FloatingActionButton buttonPages(BuildContext context) {
  return new FloatingActionButton(
    child: Text(
      'Projetos',
      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      showBarModalBottomSheet(
          context: context, builder: (context) => GitPages());
    },
  );
}

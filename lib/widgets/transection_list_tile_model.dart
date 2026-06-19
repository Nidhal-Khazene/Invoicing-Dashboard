import 'package:flutter/material.dart';

class TransectionListTileModel {
  final String title, subtitle, trailingTitle;
  final Color trailingTitleColor;

  const TransectionListTileModel({
    required this.trailingTitleColor,
    required this.title,
    required this.subtitle,
    required this.trailingTitle,
  });
}

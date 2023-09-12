import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';

enum StatusHelpType {
  accept,
  process,
  denial,
}

extension StatusText on StatusHelpType {
  String get text {
    switch (this) {
      case StatusHelpType.accept:
        return 'Diterima';
      case StatusHelpType.denial:
        return 'Ditolak';
      case StatusHelpType.process:
        return 'Diproses';
    }
  }
}

extension ColorText on StatusHelpType {
  Color get color {
    switch (this) {
      case StatusHelpType.accept:
        return greenColor;
      case StatusHelpType.denial:
        return erorColor;
      case StatusHelpType.process:
        return yellowColor;
    }
  }
}

class HelpSubmit {
  HelpSubmit(this.title, this.description, this.statusHelp);

  factory HelpSubmit.fromJson(Map<String, dynamic> json) {
    final statusString = json['statusHelp'] as String;
    final statusHelp = StatusHelpType.values.firstWhere(
        (e) => e.toString().split('.').last == statusString,
        orElse: () =>
            StatusHelpType.accept); // Nilai default jika tidak ditemukan

    return HelpSubmit(
      json['title'] as String,
      json['description'] as String,
      statusHelp,
    );
  }

  final String description;
  final StatusHelpType statusHelp;
  final String title;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'statusHelp':
          statusHelp.toString().split('.').last, // Mengambil nama enum
    };
  }
}

List<HelpSubmit> dataHelpUser = [];

// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'package:extras_project/models/employee.dart';
import 'package:flutter/material.dart';
import 'package:excel/excel.dart';

// Load the file
var bytes = File('assets/text.xlsx').readAsBytesSync();
var excel = Excel.decodeBytes(bytes);
void man() {
  for (var table in excel.tables.values) {
    for (var row in table.rows) {
      for (var cell in row) {
        print(cell.value);
      }
    }
  }

  var filteredData = <List<dynamic>>[];
  for (var table in excel.tables.values) {
    for (var row in table.rows) {
      var filteredRow = row.where((cell) => cell.value == 'solis').toList();
      if (filteredRow.isNotEmpty) {
        filteredData.add(filteredRow);
      }
    }
  }

// Use the filtered data
  print(filteredData);
}

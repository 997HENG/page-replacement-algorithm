import 'package:pra/src/tables/raw_table_processor.dart';

class Table {
  final int tableSize;
  final List<int> tables;
  String rawTable = '';
  Table({required this.tableSize})
      : tables = List<int>.generate(tableSize, (_) => 0);

  void writeTable(bool needWrite) {
    if (!needWrite) {
      for (final _ in tables) {
        rawTable += ' ';
      }
      return;
    }
    for (final e in tables) {
      if (e != 0) {
        rawTable += '$e';
      } else {
        rawTable += ' ';
      }
    }
  }

  @override
  String toString() {
    return RawTableProcessor.covertTable(
        rawTable: rawTable, tableSize: tableSize);
  }
}

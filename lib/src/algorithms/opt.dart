import 'package:pra/src/algorithms/algorithm.dart';

class Opt extends Algorithhm {
  Opt({required super.tableSize, required super.processes});

  @override
  void computeThenShow(String algorithm) {
    super.computeThenShow('OPT');
  }

  @override
  void processAtTable(int process) {
    tableSequence.remove(process);
    tableSequence.add(process);
  }

  @override
  void tableAvailable(int process) {
    tableSequence.add(process);
  }

  @override
  int findSacrifice(int process) {
    final indexOfEachProcess = <int>[];
    for (final processInTable in table.tables) {
      indexOfEachProcess.add(
        processes.indexWhere(
          (element) => element == processInTable,
          round,
        ),
      );
    }
    var max = 0;
    for (final index in indexOfEachProcess) {
      if (max < index) {
        max = index;
      }
    }
    final maxIndex = indexOfEachProcess.indexOf(max);

    if (maxIndex == -1) {
      final sacrifice = tableSequence.first;
      tableSequence.remove(sacrifice);
      tableSequence.add(process);
      return sacrifice;
    }
    final sacrifice = table.tables[maxIndex];
    tableSequence.remove(sacrifice);
    tableSequence.add(process);
    return sacrifice;
  }
}

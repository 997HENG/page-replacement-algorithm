import 'dart:collection';

import 'package:pra/src/tables/table.dart';

class Algorithhm {
  final List<int> processes;
  final Queue<int> tableSequence = Queue<int>();
  final Table table;
  final int tableSize;
  int round = 0;
  int faults = 0;

  Algorithhm({
    required this.tableSize,
    required this.processes,
  }) : table = Table(tableSize: tableSize);

  void computeThenShow(String algorithm) {
    while (processes.length > round) {
      final currentProcess = processes[round];
      late final bool needWrite;
      if (isProcessAtTable(currentProcess)) {
        processAtTable(currentProcess);
        needWrite = false;
      } else if (isTableAvailable()) {
        tableAvailable(currentProcess);
        switchAvailableTable(currentProcess);
        needWrite = true;
      } else {
        final sacrifice = findSacrifice(currentProcess);
        needPageSwitch(process: currentProcess, sacrifice: sacrifice);
        needWrite = true;
      }
      table.writeTable(needWrite);
      round++;
    }
    print('');
    show(algorithm);
  }

  void show(String algorithm) {
    print('$algorithm\nfaults: $faults');
    showProcesses();
    print(table);
  }

  void showProcesses() {
    final processesToString = processes.join(' ');
    print(processesToString);
  }

  bool isProcessAtTable(int process) => table.tables.contains(process);

  bool isTableAvailable() => table.tables.contains(0);

  void processAtTable(int process) {
    throw UnimplementedError;
  }

  void tableAvailable(int process) {
    throw UnimplementedError;
  }

  void switchAvailableTable(int process) {
    if (!table.tables.contains(process)) {
      table.tables[table.tables.indexOf(0)] = process;
    }
  }

  void needPageSwitch({required int process, required int sacrifice}) {
    faults++;
    table.tables[table.tables.indexOf(sacrifice)] = process;
  }

  int findSacrifice(int process) {
    throw UnimplementedError;
  }
}

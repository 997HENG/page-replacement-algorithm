import 'package:pra/src/algorithms/fifo.dart';
import 'package:pra/src/algorithms/lru.dart';
import 'package:pra/src/algorithms/opt.dart';
import 'package:pra/src/utilies/input_controller.dart';

void runApp() {
  final tableSize = InputController.getTableSize();
  final manualProcesses = InputController.getProcesses();
  final randomProcesses = InputController.getProcessesByRandom();
  Fifo(tableSize: tableSize, processes: manualProcesses)
      .computeThenShow('FIFO');
  Fifo(tableSize: tableSize, processes: randomProcesses)
      .computeThenShow('FIFO');
  Opt(tableSize: tableSize, processes: manualProcesses).computeThenShow('OPT');
  Opt(tableSize: tableSize, processes: randomProcesses).computeThenShow('OPT');
  Lru(tableSize: tableSize, processes: manualProcesses).computeThenShow('LRU');
  Lru(tableSize: tableSize, processes: randomProcesses).computeThenShow('LRU');
  while (true) {}
}

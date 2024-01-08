import 'package:pra/src/algorithms/algorithm.dart';

class Fifo extends Algorithhm {
  Fifo({required super.tableSize, required super.processes});

  @override
  void computeThenShow(String algorithm) {
    super.computeThenShow('FIFO');
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
    final sacrifice = tableSequence.first;
    tableSequence.add(process);
    tableSequence.remove(sacrifice);
    return sacrifice;
  }
}

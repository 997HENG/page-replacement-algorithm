import 'package:pra/src/algorithms/algorithm.dart';

class Lru extends Algorithhm {
  Lru({required super.tableSize, required super.processes});
  @override
  void computeThenShow(String algorithm) {
    super.computeThenShow('LRU');
  }

  @override
  void processAtTable(int process) {
    tableSequence.remove(process);
    tableSequence.addFirst(process);
  }

  @override
  void tableAvailable(int process) {
    tableSequence.remove(process);
    tableSequence.addFirst(process);
  }

  @override
  int findSacrifice(int process) {
    tableSequence.remove(process);
    tableSequence.addFirst(process);

    final sacrifice = tableSequence.elementAt(tableSize);
    return sacrifice;
  }
}

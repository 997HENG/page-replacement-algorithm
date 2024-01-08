class RawTableProcessor {
  static final RawTableProcessor _sharedInstance = RawTableProcessor._();
  RawTableProcessor._();
  factory RawTableProcessor() {
    return _sharedInstance;
  }

  static String covertTable({
    required String rawTable,
    required int tableSize,
  }) {
    String table = '';
    for (var loop = 0, index = 0; loop < tableSize;) {
      if (index > rawTable.length - 1) {
        table += '\n';
        loop++;
        index = loop;
        continue;
      }
      table += '${rawTable[index]} ';
      index += tableSize;
    }
    return table;
  }
}

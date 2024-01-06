import 'dart:io' show stdin;

typedef GetInput = String? Function();

class InputController {
  static List<int> getProcesses({
    GetInput? getInput,
  }) {
    print("Processes: ");
    getInput ??= () => stdin.readLineSync();
    final input = getInput()!;
    final list = input.split(RegExp(r'\s*'));
    final processes = list.map((e) => int.tryParse(e)!).toList();
    return processes;
  }

  static int getTableSize({
    GetInput? getInput,
  }) {
    getInput ??= () => stdin.readLineSync();
    final input = getInput()!;
    final size = int.tryParse(input)!;
    return size;
  }
}

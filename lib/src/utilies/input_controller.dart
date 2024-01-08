import 'dart:io' show stdin;
import 'dart:math';

typedef GetInput = String? Function();

class InputController {
  static final InputController _sharedInstance = InputController._();
  InputController._();
  factory InputController() {
    return _sharedInstance;
  }

  static List<int> getProcesses({
    GetInput? getInput,
  }) {
    print("Processes: ");
    getInput ??= () => stdin.readLineSync();
    final input = getInput()!;
    final list = input.split(RegExp(r'\s*,*\s*'));
    final processes = list.map((e) => int.tryParse(e)!).toList();

    return processes;
  }

  static List<int> getProcessesByRandom({
    int? size,
  }) {
    size ??= 20;
    final processes = <int>[];
    final random = Random();
    while (size! > 0) {
      size--;
      processes.add(random.nextInt(6) + 1);
    }
    print('Random processes:');
    print(processes);
    return processes;
  }

  static int getTableSize({
    GetInput? getInput,
  }) {
    print('TableSize: ');
    getInput ??= () => stdin.readLineSync();
    final input = getInput()!;
    final size = int.tryParse(input)!;
    return size;
  }
}

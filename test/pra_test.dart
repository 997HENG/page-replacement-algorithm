import 'package:pra/main.dart';
import 'package:pra/src/utilies/get_input.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Utilites test',
    () => {
      test(
        'Funtion getProcesses',
        () {
          final mockedInput = () => '1 2 3 4 5 6 7 8 9 0';
          expect(
            InputController.getProcesses(getInput: mockedInput),
            [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
          );
        },
      ),
      test('Function getTableSize', () {
        final mockedInput = () => '5';
        expect(
          InputController.getTableSize(
            getInput: mockedInput,
          ),
          5,
        );
      })
    },
  );
}

import 'package:pra/main.dart';
import 'package:pra/src/algorithms/algorithm.dart';
import 'package:pra/src/tables/raw_table_processor.dart';
import 'package:pra/src/tables/table.dart';
import 'package:pra/src/utilies/input_controller.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Utilites test',
    () => {
      test(
        'Funtion getProcesses',
        () {
          final mockedInput = () => '1,2,3,4,5,6,7,8,9,0';
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
      }),
      test('Function getProcessesByRandom', () {
        final randomProcesses = InputController.getProcessesByRandom();
        expect(
          [
            randomProcesses.length,
            randomProcesses.every(
              (element) => element <= 20,
            )
          ],
          [
            20,
            true,
          ],
        );
      }),
    },
  );
  group(
    'Table test',
    () {
      test('ConvertTable Function', () {
        String mockedTable = '1234123412341234';
        expect(
          RawTableProcessor.covertTable(rawTable: mockedTable, tableSize: 4),
          '1 1 1 1 \n2 2 2 2 \n3 3 3 3 \n4 4 4 4 \n',
        );
      });
    },
  );
}

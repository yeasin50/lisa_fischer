import 'dart:math';
import 'dart:ui';

//TODO: generate nextColor based on previous
//* hint: need to start with 255.0.0
//* Go up to 255.255.0 (maybe) then 0.255.0 then 0.255.255 then 0.0.255
final Random _random = Random();
List<Color> get4Color() {
  return [
    _getColor([0, 0, 1]),
    _getColor([0, 1, 1]),
    _getColor([0, 1, 1]),
    _getColor([1, 1, 1]),
  ];
}

// change color based on fixedIndex=1 //*everything is random now 🙂
Color _getColor(List<int> fixedIndex) => Color.fromARGB(
      255,
      fixedIndex[0] == 0 ? 255 : _random.nextInt(255),
      fixedIndex[1] == 0 ? 0 : _random.nextInt(255),
      fixedIndex[2] == 0 ? 255 : _random.nextInt(255),
      // _random.nextInt(255),
      // _random.nextInt(255),
      // _random.nextInt(255),
    );

// class GameOfLife {
//   // Put your code here
// }

void main() {
  // simple exercise practicing moving one step in each direction in a grid.
  int row = 3;
  int col = 4;

  print("Up: (${row - 1}, $col)");
  print("Down: (${row + 1}, $col)");
  print("Left: ($row, ${col - 1})");
  print("Right: ($row, ${col + 1})");

  print("Up-left: (${row - 1}, ${col - 1})");
  print("Up-right: (${row - 1}, ${col + 1})");
  print("Down-left: (${row + 1}, ${col - 1})");
  print("Down-right: (${row + 1}, ${col + 1})");

  int chacha =
      23; // $string interpolation allows me to put this value 23 into a string
  print("Anthony is $chacha years old");

  var grid = [
    // a simple exercise to help me understand more printing valid neighbours in a grid.
    [4, 5, 8],
    [3, 7, 9],
    [6, 1, 2],
  ];

  int r = 1;
  int c = 1;

  final directions = [
    [-1, -1],
    [-1, 0],
    [-1, 1],
    [0, -1],
    [0, 1],
    [1, -1],
    [1, 0],
    [1, 1],
  ];

  for (var d in directions) {
    int rowposition = r + d[0];
    int columnposition = c + d[1];

    if (rowposition >= 0 &&
        rowposition < grid.length &&
        columnposition >= 0 &&
        columnposition < grid[0].length) {
      print(grid[rowposition][columnposition]);
    }
  }
}

// class GameOfLife {
//   // Put your code here
// }

void main() {
  // In this exercise, I practise counting only even neighbours and returning the count.
  int row = 1;
  int col = 1;

  var grid = [
    [2, 3, 5],
    [3, 4, 6],
    [6, 9, 0],
  ];

  final position = [
    [-1, -1],
    [-1, 0],
    [-1, 1],
    [0, -1],
    [0, 1],
    [1, -1],
    [1, 0],
    [1, 1],
  ];

  int evenChachaCounts = 0;
  int neighbourChachaCounts = 0;

  for (var x in position) {
    var newRowpos = row + x[0];
    var newColpos = col + x[1];

    if (newRowpos >= 0 &&
        newRowpos < grid.length &&
        newColpos >= 0 &&
        newColpos < grid[0].length) {
      neighbourChachaCounts++; // this basically counts the number of valid neighbours the target cell has.
      print(
          "$newRowpos, $newColpos"); // this line prints the co-ordinates of the neighbour cells.
      print(grid[newRowpos][
          newColpos]); // then this line prints the value of that neighbour cell.

      int value = grid[newRowpos][newColpos];
      if (value % 2 == 0) {
        evenChachaCounts++;
      }
    }
  }
  print("Even neighbours that Chacha counted: $evenChachaCounts");
  print(
      "Chacha counts there are $neighbourChachaCounts valid neighbours for this cell");
}

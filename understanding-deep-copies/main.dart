void main() {
  List<List<int>> grid = [
    [1, 3, 5],
    [2, 5, 6],
    [7, 0, 9],
  ];

  for (var row in grid) {
    print(row);
  }

  CopyGrid newGrid = CopyGrid(grid);

  newGrid._copiedGrid[0][0] = 100;
  newGrid._copiedGrid[1][1] = 200;
  newGrid._copiedGrid[2][2] = 300;

  print("\nModified Grid");
  for (var row in newGrid._copiedGrid) {
    print(row);
  }

  print("\nOriginal Grid");
  for (var row in grid) print(row);
}

class CopyGrid {
  List<List<int>> _copiedGrid;

  CopyGrid(List<List<int>> grid)
    : _copiedGrid = grid.map((row) => List<int>.from(row)).toList();
}

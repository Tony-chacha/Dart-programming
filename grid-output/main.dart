void main() {
  var grid = [
    [1, 0, 0],
    [0, 1, 0],
    [1, 1, 0],
  ];

  for (int r = 0; r < grid.length; r++) {
    for (int c = 0; c < grid[r].length; c++) {
      int neighbours = countLiveNeighbours(grid, r, c);
      print("The cell at grid[$r][$c] has $neighbours live neighbour(s).");
    }
  }
}

int countLiveNeighbours(List<List<int>> grid, int r, int c) {
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

  int neighbourCount = 0;

  for (var g in directions) {
    var newR = r + g[0];
    var newC = c + g[1];

    if (newR >= 0 && newR < grid.length && newC >= 0 && newC < grid[0].length) {
      var newG = grid[newR][newC];
      if (newG % 2 != 0) {
        neighbourCount++;
      }
    }
  }

  return neighbourCount;
}

void main() {
  var grid = [
    [1, 0, 0],
    [0, 1, 0],
    [1, 1, 0],
  ];

  var newgrid = List.generate(
    grid.length,
    (_) => List.filled(grid[0].length, 0),
  );

  for (int r = 0; r < grid.length; r++) {
    for (int c = 0; c < grid[r].length; c++) {
      if (grid[r][c] % 2 != 0) {
        if (countLiveNeighbours(grid, r, c) == 2 ||
            countLiveNeighbours(grid, r, c) == 3) {
          newgrid[r][c] = 1;
        }
      }

      if (grid[r][c] % 2 == 0) {
        if (countLiveNeighbours(grid, r, c) == 3) {
          newgrid[r][c] = 1;
        }
      }

      // newgrid[r][c] = countLiveNeighbours(grid, r, c);
    }
  }

  for (var bestGrid in newgrid) {
    print(bestGrid);
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

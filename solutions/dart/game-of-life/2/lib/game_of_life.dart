class GameOfLife {
  late List<List<int>> _grid;

  GameOfLife(List<List<int>> input)
      : _grid = input.map((row) => List<int>.from(row)).toList();

  void tick() {
    if (_grid.isEmpty) return;

    int rows = _grid.length;
    int cols = _grid[0].length;

    var newgrid = List.generate(
      rows,
      (_) => List.filled(cols, 0),
    );

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        int liveNeighbours = countLiveNeighbours(_grid, r, c);

        if (_grid[r][c] == 1) {
          if (liveNeighbours == 2 || liveNeighbours == 3) {
            newgrid[r][c] = 1;
          }
        }

        if (_grid[r][c] == 0) {
          if (liveNeighbours == 3) {
            newgrid[r][c] = 1;
          }
        }
      }
    }
    _grid = newgrid;
  }

  int countLiveNeighbours(List<List<int>> _grid, int r, int c) {
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

      if (newR >= 0 &&
          newR < _grid.length &&
          newC >= 0 &&
          newC < _grid[0].length) {
        var newG = _grid[newR][newC];
        if (newG % 2 != 0) {
          neighbourCount++;
        }
      }
    }
    return neighbourCount;
  }

  List<List<int>> matrix() {
    return _grid.map((row) => List<int>.from(row)).toList();
  }
}

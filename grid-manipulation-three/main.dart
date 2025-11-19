void main() {
  int r = 0;
  int c = 0;

  int r1 = 0;
  int c1 = 1;

  int r2 = 0;
  int c2 = 2;

  int r3 = 1;
  int c3 = 0;

  int r4 = 1;
  int c4 = 1;

  int r5 = 1;
  int c5 = 2;

  int r6 = 2;
  int c6 = 0;

  int r7 = 2;
  int c7 = 1;

  int r8 = 2;
  int c8 = 2;

  var grid = [
    [1, 0, 0],
    [0, 1, 0],
    [1, 1, 0],
  ];

  int neighbourCount = 0;
  int neighbourCount1 = 0;
  int neighbourCount2 = 0;
  int neighbourCount3 = 0;
  int neighbourCount4 = 0;
  int neighbourCount5 = 0;
  int neighbourCount6 = 0;
  int neighbourCount7 = 0;
  int neighbourCount8 = 0;

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

  for (var g in directions) {
    var newR = r + g[0];
    var newC = c + g[1];

    var newR1 = r1 + g[0];
    var newC1 = c1 + g[1];

    var newR2 = r2 + g[0];
    var newC2 = c2 + g[1];

    var newR3 = r3 + g[0];
    var newC3 = c3 + g[1];

    var newR4 = r4 + g[0];
    var newC4 = c4 + g[1];

    var newR5 = r5 + g[0];
    var newC5 = c5 + g[1];

    var newR6 = r6 + g[0];
    var newC6 = c6 + g[1];

    var newR7 = r7 + g[0];
    var newC7 = c7 + g[1];

    var newR8 = r8 + g[0];
    var newC8 = c8 + g[1];

    if (newR >= 0 && newR < grid.length && newC >= 0 && newC < grid[0].length) {
      var newG = grid[newR][newC];
      if (newG % 2 != 0) {
        neighbourCount++;
      }
    }

    if (newR1 >= 0 &&
        newR1 < grid.length &&
        newC1 >= 0 &&
        newC1 < grid[0].length) {
      var newG1 = grid[newR1][newC1];
      if (newG1 % 2 != 0) {
        neighbourCount1++;
      }
    }

    if (newR2 >= 0 &&
        newR2 < grid.length &&
        newC2 >= 0 &&
        newC2 < grid[0].length) {
      var newG2 = grid[newR2][newC2];
      if (newG2 % 2 != 0) {
        neighbourCount2++;
      }
    }

    if (newR3 >= 0 &&
        newR3 < grid.length &&
        newC3 >= 0 &&
        newC3 < grid[0].length) {
      var newG3 = grid[newR3][newC3];
      if (newG3 % 2 != 0) {
        neighbourCount3++;
      }
    }

    if (newR4 >= 0 &&
        newR4 < grid.length &&
        newC4 >= 0 &&
        newC4 < grid[0].length) {
      var newG4 = grid[newR4][newC4];
      if (newG4 % 2 != 0) {
        neighbourCount4++;
      }
    }

    if (newR5 >= 0 &&
        newR5 < grid.length &&
        newC5 >= 0 &&
        newC5 < grid[0].length) {
      var newG5 = grid[newR5][newC5];
      if (newG5 % 2 != 0) {
        neighbourCount5++;
      }
    }

    if (newR6 >= 0 &&
        newR6 < grid.length &&
        newC6 >= 0 &&
        newC6 < grid[0].length) {
      var newG6 = grid[newR6][newC6];
      if (newG6 % 2 != 0) {
        neighbourCount6++;
      }
    }

    if (newR7 >= 0 &&
        newR7 < grid.length &&
        newC7 >= 0 &&
        newC7 < grid[0].length) {
      var newG7 = grid[newR7][newC7];
      if (newG7 % 2 != 0) {
        neighbourCount7++;
      }
    }

    if (newR8 >= 0 &&
        newR8 < grid.length &&
        newC8 >= 0 &&
        newC8 < grid[0].length) {
      var newG8 = grid[newR8][newC8];
      if (newG8 % 2 != 0) {
        neighbourCount8++;
      }
    }
  }
  print("01) The cell at grid[0][0] has $neighbourCount live neighbour.");
  print("02) The cell at grid[0][1] has $neighbourCount1 live neighbours.");
  print("03) The cell at grid[0][2] has $neighbourCount2 live neighbour.");
  print("04) The cell at grid[1][0] has $neighbourCount3 live neighbours.");
  print("05) The cell at grid[1][1] has $neighbourCount4 live neighbours.");
  print("06) The cell at grid[1][2] has $neighbourCount5 live neighbours.");
  print("07) The cell at grid[2][0] has $neighbourCount6 live neighbours.");
  print("08) The cell at grid[2][1] has $neighbourCount7 live neighbours.");
  print("09) The cell at grid[2][2] has $neighbourCount8 live neighbours.");
}

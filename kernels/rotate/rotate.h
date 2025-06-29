void rotate90(unsigned char input[3][3], unsigned char output[3][3]) {
  for (int y = 0; y < 3; y++) {
    for (int x = 0; x < 3; x++) {
      output[x][3 - 1 - y] = input[y][x];
    }
  }
}

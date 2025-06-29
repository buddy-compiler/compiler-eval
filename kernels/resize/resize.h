void resize(const unsigned char input[2][2], unsigned char output[4][4]) {
  for (int y = 0; y < 4; y++) {
    for (int x = 0; x < 4; x++) {
      int src_x = x / 2;
      int src_y = y / 2;
      output[y][x] = input[src_y][src_x];
    }
  }
}

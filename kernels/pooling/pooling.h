void max_pooling(int n, int m, int pool_size, float input[], float output[]) {
  int output_rows = n / pool_size;
  int output_cols = m / pool_size;

  for (int i = 0; i < output_rows; i++) {
    for (int j = 0; j < output_cols; j++) {
      float max_value = input[i * pool_size * m + j * pool_size];
      for (int p = 0; p < pool_size; p++) {
        for (int q = 0; q < pool_size; q++) {
          int row = i * pool_size + p;
          int col = j * pool_size + q;
          if (input[row * m + col] > max_value) {
            max_value = input[row * m + col];
          }
        }
      }
      output[i * output_cols + j] = max_value;
    }
  }
}

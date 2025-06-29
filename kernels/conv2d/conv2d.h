void conv2d(int n, int m, int k, float input[], float kernel[],
            float output[]) {
  for (int i = 0; i < n - k + 1; i++) {
    for (int j = 0; j < m - k + 1; j++) {
      float sum = 0.0f;
      for (int p = 0; p < k; p++) {
        for (int q = 0; q < k; q++) {
          sum += input[(i + p) * m + (j + q)] * kernel[p * k + q];
        }
      }
      output[i * (m - k + 1) + j] = sum;
    }
  }
}

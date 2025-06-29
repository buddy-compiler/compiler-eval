void two_matrix_multiply(int n, int m, int p, int q, float A[], float B[],
                         float C[], float D[], float E[]) {
  float temp[n * p];
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < p; j++) {
      float sum = 0.0f;
      for (int k = 0; k < m; k++) {
        sum += A[i * m + k] * B[k * p + j];
      }
      temp[i * p + j] = sum;
    }
  }
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < q; j++) {
      float sum = 0.0f;
      for (int k = 0; k < p; k++) {
        sum += temp[i * p + k] * C[k * q + j];
      }
      E[i * q + j] = sum;
    }
  }
}

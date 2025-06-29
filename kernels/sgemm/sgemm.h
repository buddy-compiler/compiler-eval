void sgemm(int m, int n, int k, float alpha, float *A, float *B, float beta,
           float *C) {
  int i, j, l;

  for (i = 0; i < m; i++) {
    for (j = 0; j < n; j++) {
      C[i * n + j] *= beta;
    }
  }

  for (i = 0; i < m; i++) {
    for (j = 0; j < n; j++) {
      float sum = 0.0f;
      for (l = 0; l < k; l++) {
        sum += A[i * k + l] * B[l * n + j];
      }
      C[i * n + j] += alpha * sum;
    }
  }
}

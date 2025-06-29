void gesummv(int n, float alpha, float beta, float A[], float B[], float x[],
             float y[]) {
  for (int i = 0; i < n; i++) {
    y[i] = 0;
    for (int j = 0; j < n; j++) {
      y[i] += alpha * A[i * n + j] * x[j] + beta * B[i * n + j] * x[j];
    }
  }
}

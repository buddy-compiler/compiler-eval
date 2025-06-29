void gemver(int n, float alpha, float beta, float A[], float u1[], float u2[],
            float v1[], float v2[], float x[], float y[], float z[]) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      A[i * n + j] += u1[i] * v1[j] + u2[i] * v2[j];
    }
  }

  for (int j = 0; j < n; j++) {
    for (int i = 0; i < n; i++) {
      x[j] += beta * A[i * n + j] * y[i];
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      z[i] += alpha * A[i * n + j] * x[j];
    }
  }
}

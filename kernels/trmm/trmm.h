void trmm(int n, float alpha, float T[], float B[]) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      float temp = 0.0f;
      for (int k = 0; k <= i; k++) { // Upper triangular matrix
        temp += T[i * n + k] * B[k * n + j];
      }
      B[i * n + j] = alpha * temp;
    }
  }
}

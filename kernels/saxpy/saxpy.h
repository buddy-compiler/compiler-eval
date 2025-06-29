void saxpy(int n, float a, float *x, float *y, float *result) {
  for (int i = 0; i < n; i++) {
    result[i] = a * x[i] + y[i];
  }
}

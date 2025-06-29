void jacobi_1d(int n, int tsteps, float A[], float B[]) {
  for (int t = 0; t < tsteps; t++) {
    for (int i = 1; i < n - 1; i++) {
      B[i] = 0.333f * (A[i - 1] + A[i] + A[i + 1]);
    }
    for (int i = 1; i < n - 1; i++) {
      A[i] = B[i];
    }
  }
}

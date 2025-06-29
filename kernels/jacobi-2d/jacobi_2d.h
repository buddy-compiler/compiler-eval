void jacobi_2d(int n, int tsteps, float A[][n], float B[][n]) {
  for (int t = 0; t < tsteps; t++) {
    for (int i = 1; i < n - 1; i++) {
      for (int j = 1; j < n - 1; j++) {
        B[i][j] =
            0.25f * (A[i - 1][j] + A[i + 1][j] + A[i][j - 1] + A[i][j + 1]);
      }
    }
    for (int i = 1; i < n - 1; i++) {
      for (int j = 1; j < n - 1; j++) {
        A[i][j] = B[i][j];
      }
    }
  }
}

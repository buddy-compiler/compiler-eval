void mvt(int n, float x1[], float x2[], float A[], float y1[], float y2[]) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      x1[i] += A[j * n + i] * y1[j];
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      x2[i] += A[i * n + j] * y2[j];
    }
  }
}

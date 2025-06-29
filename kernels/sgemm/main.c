#include "sgemm.h"
#include <stdio.h>

int main() {
  int m = 2, n = 3, k = 2;
  float alpha = 1.0f, beta = 1.0f;

  float A[2 * 2] = {1.0f, 2.0f, 3.0f, 4.0f};
  float B[2 * 3] = {5.0f, 6.0f, 7.0f, 8.0f, 9.0f, 10.0f};
  float C[2 * 3] = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};

  sgemm(m, n, k, alpha, A, B, beta, C);

  printf("=== Output ===\n");
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      printf("%f ", C[i * n + j]);
    }
    printf("\n");
  }

  return 0;
}

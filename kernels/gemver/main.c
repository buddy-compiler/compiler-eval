#include "gemver.h"
#include <stdio.h>

int main() {
  int n = 3;
  float alpha = 1.0f, beta = 1.0f;

  float A[3 * 3] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f, 9.0f};
  float u1[3] = {1.0f, 2.0f, 3.0f};
  float u2[3] = {4.0f, 5.0f, 6.0f};
  float v1[3] = {7.0f, 8.0f, 9.0f};
  float v2[3] = {10.0f, 11.0f, 12.0f};
  float x[3] = {0.0f, 0.0f, 0.0f};
  float y[3] = {1.0f, 1.0f, 1.0f};
  float z[3] = {0.0f, 0.0f, 0.0f};

  gemver(n, alpha, beta, A, u1, u2, v1, v2, x, y, z);

  printf("=== Output ===\n");

  printf("Matrix A:\n");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      printf("%f ", A[i * n + j]);
    }
    printf("\n");
  }

  printf("Vector x:\n");
  for (int i = 0; i < n; i++) {
    printf("%f ", x[i]);
  }
  printf("\n");

  printf("Vector z:\n");
  for (int i = 0; i < n; i++) {
    printf("%f ", z[i]);
  }
  printf("\n");

  return 0;
}

#include "gesummv.h"
#include <stdio.h>

int main() {
  int n = 3;
  float alpha = 1.5f, beta = 2.0f;

  // Initialize matrices and vectors
  float A[3 * 3] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f, 9.0f};
  float B[3 * 3] = {9.0f, 8.0f, 7.0f, 6.0f, 5.0f, 4.0f, 3.0f, 2.0f, 1.0f};
  float x[3] = {1.0f, 2.0f, 3.0f};
  float y[3] = {0.0f, 0.0f, 0.0f};

  gesummv(n, alpha, beta, A, B, x, y);

  // Output results
  printf("=== Output ===\n");

  printf("=== Vector y ===\n");
  for (int i = 0; i < n; i++) {
    printf("%f ", y[i]);
  }
  printf("\n");

  return 0;
}

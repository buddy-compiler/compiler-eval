#include "mvt.h"
#include <stdio.h>

int main() {
  int n = 3;

  // Initialize vectors and matrix
  float x1[3] = {0.0f, 0.0f, 0.0f};
  float x2[3] = {0.0f, 0.0f, 0.0f};
  float A[3 * 3] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f, 9.0f};
  float y1[3] = {1.0f, 2.0f, 3.0f};
  float y2[3] = {4.0f, 5.0f, 6.0f};

  mvt(n, x1, x2, A, y1, y2);

  // Output results
  printf("=== Output ===\n");
  printf("=== Vector x1 ===\n");
  for (int i = 0; i < n; i++) {
    printf("%f ", x1[i]);
  }
  printf("\n");

  printf("=== Vector x2 ===\n");
  for (int i = 0; i < n; i++) {
    printf("%f ", x2[i]);
  }
  printf("\n");

  return 0;
}

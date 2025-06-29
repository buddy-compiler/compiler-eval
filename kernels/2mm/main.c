#include "2mm.h"
#include <stdio.h>

int main() {
  int n = 3, m = 3, p = 3, q = 3;

  // Initialize matrices A (3x3), B (3x3), C (3x3)
  float A[3 * 3] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f, 9.0f};

  float B[3 * 3] = {9.0f, 8.0f, 7.0f, 6.0f, 5.0f, 4.0f, 3.0f, 2.0f, 1.0f};

  float C[3 * 3] = {1.0f, 0.0f, 2.0f, 0.0f, 1.0f, 3.0f, 4.0f, 5.0f, 6.0f};

  // Output matrix E (3x3)
  float E[3 * 3] = {0.0f};

  two_matrix_multiply(n, m, p, q, A, B, C, C, E);

  // Output results
  printf("=== Output ===\n");
  printf("=== Resultant Matrix E ===\n");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < q; j++) {
      printf("%f ", E[i * q + j]);
    }
    printf("\n");
  }

  return 0;
}

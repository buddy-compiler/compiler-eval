#include "jacobi_2d.h"
#include <stdio.h>

int main() {
  int n = 6;      // Size of the grid (6x6 for this example)
  int tsteps = 5; // Number of timesteps

  // Initialize arrays A and B
  float A[6][6];
  float B[6][6];

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      A[i][j] = (float)(i * n + j);
      B[i][j] = 0.0f;
    }
  }

  jacobi_2d(n, tsteps, A, B);

  // Output results
  printf("=== Output ===\n");
  printf("=== Final Array A ===\n");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      printf("%f ", A[i][j]);
    }
    printf("\n");
  }

  return 0;
}

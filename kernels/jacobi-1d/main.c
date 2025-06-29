#include "jacobi_1d.h"
#include <stdio.h>

int main() {
  int n = 10;
  int tsteps = 5;

  // Initialize arrays A and B
  float A[10];
  float B[10];
  for (int i = 0; i < n; i++) {
    A[i] = i * 1.0f;
    B[i] = 0.0f;
  }

  jacobi_1d(n, tsteps, A, B);

  // Output results
  printf("=== Output ===\n");
  printf("=== Final Array A ===\n");
  for (int i = 0; i < n; i++) {
    printf("%f ", A[i]);
  }
  printf("\n");

  return 0;
}

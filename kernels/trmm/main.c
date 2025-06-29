#include "trmm.h"
#include <stdio.h>

int main() {
  int n = 3;
  float alpha = 2.0f;

  // Initialize upper triangular matrix T and matrix B
  float T[3 * 3] = {1.0f, 0.0f, 0.0f, 2.0f, 3.0f, 0.0f, 4.0f, 5.0f, 6.0f};
  float B[3 * 3] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f, 9.0f};

  trmm(n, alpha, T, B);

  // Output results
  printf("=== Output ===\n");
  printf("=== Matrix B ===\n");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      printf("%f ", B[i * n + j]);
    }
    printf("\n");
  }

  return 0;
}

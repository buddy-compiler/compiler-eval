#include "correlation.h"
#include <stdio.h>

int main() {
  int n = 3, m = 4;

  // Initialize data matrix (3x4)
  float data[3 * 4] = {1.0f, 2.0f, 3.0f, 4.0f,  5.0f,  6.0f,
                       7.0f, 8.0f, 9.0f, 10.0f, 11.0f, 12.0f};

  // Output correlation matrix (3x3)
  float corr[3 * 3] = {0.0f};

  correlation(n, m, data, corr);

  // Output results
  printf("=== Output ===\n");
  printf("=== Correlation Matrix ===\n");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      printf("%f ", corr[i * n + j]);
    }
    printf("\n");
  }

  return 0;
}

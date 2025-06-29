#include "conv2d.h"
#include <stdio.h>

int main() {
  int n = 5, m = 5, k = 3;

  // Initialize input matrix (5x5) and kernel (3x3)
  float input[5 * 5] = {1,  2,  3,  4,  5,  6,  7,  8,  9,  10, 11, 12, 13,
                        14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};

  float kernel[3 * 3] = {1, 0, -1, 1, 0, -1, 1, 0, -1};

  // Output matrix (3x3)
  float output[3 * 3] = {0};

  conv2d(n, m, k, input, kernel, output);

  // Output results
  printf("=== Output ===\n");
  printf("=== Output Matrix ===\n");
  for (int i = 0; i < n - k + 1; i++) {
    for (int j = 0; j < m - k + 1; j++) {
      printf("%f ", output[i * (m - k + 1) + j]);
    }
    printf("\n");
  }

  return 0;
}

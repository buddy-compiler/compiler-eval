#include "pooling.h"
#include <stdio.h>

int main() {
  int n = 4, m = 4, pool_size = 2;

  // Initialize input matrix (4x4)
  float input[4 * 4] = {1.0f, 2.0f,  3.0f,  4.0f,  5.0f,  6.0f,  7.0f,  8.0f,
                        9.0f, 10.0f, 11.0f, 12.0f, 13.0f, 14.0f, 15.0f, 16.0f};

  // Output matrix (2x2)
  float output[2 * 2] = {0.0f};

  max_pooling(n, m, pool_size, input, output);

  // Output results
  printf("=== Output ===\n");
  printf("=== Max Pooling Output ===\n");
  for (int i = 0; i < n / pool_size; i++) {
    for (int j = 0; j < m / pool_size; j++) {
      printf("%f ", output[i * (m / pool_size) + j]);
    }
    printf("\n");
  }

  return 0;
}

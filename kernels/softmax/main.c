#include "softmax.h"
#include <stdio.h>

int main() {
  int n = 5;

  // Initialize input vector
  float input[5] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
  float output[5] = {0.0f};

  softmax(n, input, output);

  // Output results
  printf("=== Output ===\n");
  printf("=== Softmax Output ===\n");
  for (int i = 0; i < n; i++) {
    printf("%f ", output[i]);
  }
  printf("\n");

  return 0;
}
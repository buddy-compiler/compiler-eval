#include "saxpy.h"
#include <stdio.h>

int main() {
  // Define the size of the vectors
  int n = 5;

  // Define the scalar 'a'
  float a = 2.0f;

  // Define vectors x, y, and the result vector
  float x[5] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
  float y[5] = {5.0f, 4.0f, 3.0f, 2.0f, 1.0f};
  float result[5] = {0.0f};

  // Call the saxpy function: result = a * x + y
  saxpy(n, a, x, y, result);

  // Print the results
  printf("=== Output ===\n");
  for (int i = 0; i < n; i++) {
    printf("result[%d] = %.2f (%.2f * %.2f + %.2f)\n", i, result[i], a, x[i],
           y[i]);
  }

  return 0;
}

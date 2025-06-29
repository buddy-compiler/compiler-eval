#include "fir.h"
#include <stdio.h>

int main(void) {
  // Prepare an example input signal
  float input[] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0};

  // FIR filter coefficients: simple moving average filter
  float coeffs[5] = {0.2f, 0.2f, 0.2f, 0.2f, 0.2f};

  // Allocate output array based on input length
  int length = sizeof(input) / sizeof(input[0]);
  float output[length];

  // Call the FIR filter function
  fir(input, output, length, coeffs, 5);

  // Print the output results
  printf("=== Output ===\n");
  for (int i = 0; i < length; i++) {
    printf("output[%d] = %f\n", i, output[i]);
  }

  return 0;
}

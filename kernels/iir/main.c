#include "./iir.h"
#include <stdio.h>

#define MAX_ORDER 10

int main() {
  // Example filter coefficients for a second-order IIR filter
  double b[] = {0.2, 0.3, 0.2};  // Feedforward coefficients
  double a[] = {1.0, -0.4, 0.3}; // Feedback coefficients
  int order = 2;

  // Example input signal: sampled sine-like values
  double input_signal[10] = {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9};
  double output_signal[10];

  // Apply IIR filter
  iir_filter(input_signal, output_signal, b, a, order, 10);

  // Print results
  printf("=== Output ===\n");
  for (int i = 0; i < 10; ++i) {
    printf("Input: %.2lf\tOutput: %.5lf\n", input_signal[i], output_signal[i]);
  }

  return 0;
}

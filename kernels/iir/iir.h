void iir_filter(double *input_signal, double *output_signal, double *b,
                double *a, int order, int signal_length) {
  double x[10] = {0.0}; // Input delay line, initialized to 0
  double y[10] = {0.0}; // Output delay line, initialized to 0

  for (int i = 0; i < signal_length; ++i) {
    double input = input_signal[i];
    double output = b[0] * input;

    // Apply feedforward (b) and feedback (a) coefficients
    for (int j = 1; j <= order; ++j) {
      output += b[j] * x[j - 1]; // Feedforward part
      output -= a[j] * y[j - 1]; // Feedback part
    }

    // Update delay lines
    for (int j = order - 1; j > 0; --j) {
      x[j] = x[j - 1];
      y[j] = y[j - 1];
    }
    x[0] = input;
    y[0] = output;

    output_signal[i] = output;
  }
}

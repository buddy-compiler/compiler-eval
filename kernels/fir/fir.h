void fir(const float *input, float *output, int length, const float *coeffs,
         int taps) {
  // For each output sample, perform convolution
  for (int n = 0; n < length; n++) {
    float acc = 0.0f;
    // FIR convolution: acc = sum_{k=0 to taps-1}( coeffs[k] * input[n - k] )
    // Note: prevent out-of-bound access; if n < k, treat input[n - k] as 0.
    for (int k = 0; k < taps; k++) {
      int idx = n - k;
      if (idx >= 0) {
        acc += coeffs[k] * input[idx];
      }
    }
    output[n] = acc;
  }
}

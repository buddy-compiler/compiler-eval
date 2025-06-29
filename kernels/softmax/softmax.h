void softmax(int n, float input[], float output[]) {
  float max = input[0];
  for (int i = 1; i < n; i++) {
    if (input[i] > max) {
      max = input[i];
    }
  }

  float sum = 0.0f;
  for (int i = 0; i < n; i++) {
    float result = 1.0f;
    float term = 1.0f;
    float x = input[i] - max;
    for (int j = 1; j <= 10; j++) {
      term *= x / j;
      result += term;
    }
    output[i] = result;
    sum += result;
  }

  for (int i = 0; i < n; i++) {
    output[i] /= sum;
  }
}

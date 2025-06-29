void relu(int n, float input[], float output[]) {
  for (int i = 0; i < n; i++) {
    output[i] = input[i] > 0 ? input[i] : 0;
  }
}

void covariance(int n, int m, float data[], float cov[]) {
  float mean[n];

  // Calculate mean for each variable
  for (int i = 0; i < n; i++) {
    mean[i] = 0.0f;
    for (int j = 0; j < m; j++) {
      mean[i] += data[i * m + j];
    }
    mean[i] /= m;
  }

  // Center the data
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      data[i * m + j] -= mean[i];
    }
  }

  // Calculate covariance matrix
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      float sum = 0.0f;
      for (int k = 0; k < m; k++) {
        sum += data[i * m + k] * data[j * m + k];
      }
      cov[i * n + j] = sum / (m - 1);
    }
  }
}

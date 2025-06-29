#include <math.h>

void correlation(int n, int m, float data[], float corr[]) {
  float mean[n];
  float stddev[n];

  // Calculate mean for each variable
  for (int i = 0; i < n; i++) {
    mean[i] = 0.0f;
    for (int j = 0; j < m; j++) {
      mean[i] += data[i * m + j];
    }
    mean[i] /= m;
  }

  // Calculate standard deviation for each variable
  for (int i = 0; i < n; i++) {
    stddev[i] = 0.0f;
    for (int j = 0; j < m; j++) {
      float diff = data[i * m + j] - mean[i];
      stddev[i] += diff * diff;
    }
    stddev[i] = sqrtf(stddev[i] / m);
  }

  // Normalize the data
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      data[i * m + j] = (data[i * m + j] - mean[i]) / stddev[i];
    }
  }

  // Calculate correlation matrix
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      float sum = 0.0f;
      for (int k = 0; k < m; k++) {
        sum += data[i * m + k] * data[j * m + k];
      }
      corr[i * n + j] = sum / (m - 1);
    }
  }
}

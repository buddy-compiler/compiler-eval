void fdtd_2d(double Ex[3][3], double Ey[3][3], double Hz[3][3], int NX, int NY,
             int TMAX) {
  for (int t = 0; t < TMAX; t++) {
    // 1) Update Ex
    for (int j = 1; j < NY; j++) {
      for (int i = 0; i < NX; i++) {
        Ex[j][i] -= (Hz[j][i] - Hz[j - 1][i]);
      }
    }

    // 2) Update Ey
    for (int j = 0; j < NY; j++) {
      for (int i = 1; i < NX; i++) {
        Ey[j][i] += (Hz[j][i] - Hz[j][i - 1]);
      }
    }

    // 3) Add a pulse source at the center of the grid (example)
    Ey[NY / 2][NX / 2] += 1.0;

    // 4) Update Hz
    for (int j = 0; j < NY - 1; j++) {
      for (int i = 0; i < NX - 1; i++) {
        Hz[j][i] -= ((Ey[j][i + 1] - Ey[j][i]) - (Ex[j + 1][i] - Ex[j][i]));
      }
    }
  }
}

#include "fdtd_2d.h"
#include <stdio.h>

int main(void) {
  // Grid dimensions and time steps
  int NX = 3, NY = 3, TMAX = 2;

  // Field component arrays (3x3), all initialized to 0
  double Ex[3][3] = {0}, Ey[3][3] = {0}, Hz[3][3] = {0};

  // Call the fdtd_2d function
  fdtd_2d(Ex, Ey, Hz, NX, NY, TMAX);

  // Print the final Hz field

  printf("=== Output ===\n");
  printf("fdtd:\n");
  for (int j = 0; j < NY; j++) {
    for (int i = 0; i < NX; i++) {
      printf("%6.2f ", Hz[j][i]);
    }
    printf("\n");
  }

  return 0;
}

#include "resize.h"
#include <stdio.h>

int main() {
  // Define a simple 2x2 original grayscale image
  unsigned char original[2][2] = {{100, 150}, {200, 250}};

  // Define a 4x4 image array for the resized result
  unsigned char resized[4][4];

  // Call the resize function to scale the image
  resize(original, resized);

  // Print the resized image
  printf("=== Output ===\n");
  for (int y = 0; y < 4; y++) {
    for (int x = 0; x < 4; x++) {
      printf("%3d ", resized[y][x]);
    }
    printf("\n");
  }

  return 0;
}

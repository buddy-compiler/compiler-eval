#include "rotate.h"
#include <stdio.h>

int main(void) {
  // Define a simple 3×3 grayscale image (example data)
  unsigned char original[3][3] = {{10, 20, 30}, {40, 50, 60}, {70, 80, 90}};

  // Define an array for the rotated image
  unsigned char rotated[3][3];

  // Call the rotate90 function to rotate the image by 90 degrees clockwise
  rotate90(original, rotated);

  // Print the rotated image
  printf("=== Output ===\n");
  for (int y = 0; y < 3; y++) {
    for (int x = 0; x < 3; x++) {
      printf("%3d ", rotated[y][x]);
    }
    printf("\n");
  }

  return 0;
}

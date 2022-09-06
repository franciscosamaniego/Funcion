#include <stdio.h>
#include <limits.h>

int array_max(int arr[], int l) {
  int max = INT_MIN;
  for(int i = 0; i < l; i++) {
    if(arr[i] > max) {
      max = arr[i];
    }
  }
  return max;
}

int main(int argc, char *argv[]) {
  int arr[10] = {1,2,3,10,45,1,2,89,0,12};
  int max = 0;
  array_max(arr, 6);
  printf("%d\n", max);
  // printf("%d\n", array_max(arr, 5));
  return 0;
}

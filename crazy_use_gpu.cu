#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

const long long tdelay = 1000000LL;
const int hdelay = 1000;

__global__ void dkern(){

  long long start = clock64();
  while(clock64() < start + tdelay);
}

int main(int argc, char *argv[]){
  int i = 0;
  int my_delay = hdelay;
  if (argc > 1) my_delay = atoi(argv[1]);
  while (i == 0){
    dkern<<<1, 1>>>();
    usleep(my_delay);
  }
  return 0;
}

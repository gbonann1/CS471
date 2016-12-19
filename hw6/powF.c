/* Download and compile powR.c to assembly code on your machine: 
 * Use the command gcc -S powR.c
 */

int  powF(int pow, int base) {
  if (0==pow) {
    return 1;
  } else {
    return base * powF(pow-1, base);
  }
}


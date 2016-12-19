#include <stdio.h>
#include <stdlib.h>

int ack(int m, int n) {
	if (m == 0){
		return n + 1;
	}
	else if (n == 0 && m > 0){
		return ack(m-1, 1);
	}
	else if (n > 0 && m > 0){
		return ack(m-1, ack(m,n-1));
	}
	return -1;
} 



int main(int argc, char **argv) {
	if (argc < 3) {
		printf("%s usage: [BASE] [POWER]\n", argv[0]);
		return 1;
	}
	int m = atoi(argv[1]);
	int n = atoi(argv[2]);
	int r = ack(m,n);
	printf("%d\n", r);
	return 0;
}

#include <stdio.h>
#include <time.h>
#include <string.h>

const char * get_the_thing(int n) {
	int n1 = n % 100;
	
	if (n1 >= 10 && n1 <= 20) {
		return "th";
	}

	int nlast = n % 10;
	switch (nlast) {
		case 1: return "st"; break;
		case 2: return "nd"; break;
		case 3: return "rd"; break;
		default: return "th";
	}
}

int main() {
	clock_t prev = clock();

	int count = 0;
	for (int i = 10; i < 10000000; i++) {
		if (strcmp(get_the_thing(i), "st") == 0) {
			count++;
		}
	}

	clock_t now = clock();
	printf(
		"\t%fms, count: %d\n",
		((float)(now - prev) / CLOCKS_PER_SEC) * 1000,
		count
	);

	return 0;
}

function get_the_thing(n) {
	let n1 = n % 100;
	if (n1 >= 10 && n1 <= 20) {
		return 'th';
	}

	let nlast = n % 10;
	switch (nlast) {
		case 1: return "st"; break;
		case 2: return "nd"; break;
		case 3: return "rd"; break;
		default: return "th";
	}
}

let prev = Date.now();

let count = 0;
for (let i = 10; i < 10000000; i++) {
	if (get_the_thing(i) == 'st') {
		count++;
	}
}

let now = Date.now();
console.log('\t' + (now - prev) + 'ms, count: ' + count);

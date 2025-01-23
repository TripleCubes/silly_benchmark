use std::time::SystemTime;

fn main() {
	measure();
}

fn measure() {
	let prev = SystemTime::now();

	let mut count = 0;
	for i in 0..10000000 {
		if get_the_thing(i) == "st" {
			count += 1;
		}
	}
	
	let diff = SystemTime::now().duration_since(prev).expect("err");
	println!("\t{} ms, count: {}", diff.as_millis(), count);
}

fn get_the_thing(n: i32) -> &'static str {
	let n1 = n % 100;
	if n1 >= 10 && n1 <= 20 {
		return "th";
	}

	let nlast = n % 10;
	match nlast {
		1 => "st",
		2 => "nd",
		3 => "rd",
		_ => "th",
	}
}

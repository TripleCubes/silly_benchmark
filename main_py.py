import time as time

def get_the_thing(n):
	n1 = n % 100
	if n1 >= 10 and n1 <= 20:
		return 'th'

	nlast = n % 10
	# I don't have python 3.10 to use switch. deal with it
	if nlast == 1:
		return 'st'
	elif nlast == 2:
		return 'nd'
	elif nlast == 3:
		return 'rd'
	else:
		return 'th'

prev = time.time()

count = 0
for i in range(0, 10000000):
	if get_the_thing(i) == 'st':
		count += 1

now = time.time()
print('\t' + str((now - prev) * 1000) + 'ms, count: ' + str(count))

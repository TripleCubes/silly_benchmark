import Data.Time.Clock.POSIX(getPOSIXTime)

main = do
	prev <- getPOSIXTime

	let count = length
	          $ filter (\s -> s == "st")
	          $ map get_the_thing [10 .. 10000000 - 1]

	putStrLn $ "count: " ++ show count

	now <- getPOSIXTime

	putStrLn $ show (now - prev)

get_the_thing :: Int -> String
get_the_thing n
	| n1 >= 10 && n1 <= 20 = "th"
	| nlast == 1 = "st"
	| nlast == 2 = "nd"
	| nlast == 3 = "rd"
	| otherwise = "th"
	where n1 = n `mod` 100
	      nlast = n `mod` 10

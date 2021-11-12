-- Esercizi su Discord spiegati da Penny
assoluto :: Int -> Int
assoluto n = if n >= 0 then n else negate n

anno_terra :: Double
anno_terra = 2 * pi * 150e6

-- Fibonacci.hs

f0 :: Int
f0 = 0

f1 :: Int
f1 = 1

f2 :: Int
f2 = f0 + f1

f3 :: Int
f3 = f1 + f2

f4 :: Int
f4 = f2 + f3

f5 :: Int
f5 = f3 + f4

f6 :: Int
f6 = f4 + f5

f7 :: Int
f7 = f5 + f6


successore :: Int -> Int
successore x = x + 1

precursore :: Int -> Int
precursore x = x - 1


pari :: Int -> Bool
pari n = n `mod` 2 == 0

dispari :: Int -> Bool
dispari = not . pari

--somma i primi n numeri primi naturali positivi.

somma :: Int -> Int
somma n = (n * (n + 1) `div` 2)
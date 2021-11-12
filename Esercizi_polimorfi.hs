import Distribution.Types.Benchmark.Lens (Benchmark)
import Distribution.Simple.Utils (xargs)
--Definire le seguenti funzioni, il cui comportamento si evince dal loro tipo.

--    maybeLength :: Maybe a -> Int
--    maybeMap :: (a -> b) -> Maybe a -> Maybe b
--    maybeFilter :: (a -> Bool) -> Maybe a -> Maybe a

maybeLenght :: Maybe a -> Maybe b
maybeLenght Nothing = 0
maybeLenght (Just _) = 1

maybeMap :: (a -> b) -> Maybe a -> Maybe b
maybeMap _ Nothing = Nothing 
maybeMap f (Just x) = Just (f x)

maybeFilter :: (a -> Bool) -> Maybe a -> Maybe a
maybeFilter p (Just x) | p x = Just x
maybeFilter _ _ = Nothing 

-- Il tipo Numero (si veda la sezione di esercizi della traccia sui costruttori con argomenti)
-- può essere rappresentato con il tipo Either Int Float.
-- Ridefinire la funzione somma :: Either Int Float -> Either Int Float -> Either Int Float
-- per sommare due numeri in modo tale che il risultato sia floating-point solo se necessario.

somma :: Either Int Float -> Either Int Float -> Either Int Float
somma (Left m) (Left n) = Left (m+n)
somma (Left m) (Right n) = Right (fromIntegral m+n)
somma (Right m) (Left n) = Right (m + fromIntegral n)
somma (Right m) (Right n) = Right (m+n)

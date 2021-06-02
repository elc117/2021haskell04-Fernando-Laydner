-- Prática 04 de Haskell
-- Nome: Fernando Kalikosque Laydner

--1
faixaIdoso :: Int -> String
faixaIdoso x
  | x >= 80 = "IDO80"
  | x >= 75 = "IDO79"
  | x >= 70 = "IDO74"
  | x >= 65 = "IDO69"
  | x >= 60 = "IDO64"
  | x < 60 = "ND"

--2
classifIdosos :: [(String,Int)] -> [(String,Int,String)]
classifIdosos lista = [(nome, idade, faixaIdoso idade) | (nome, idade) <- lista]

--3
classifIdosos' :: [(String,Int)] -> [(String,Int,String)]
classifIdosos' lista = map (\x -> (fst x, snd x, faixaIdoso (snd x))) lista

--4
strColor :: (Int,Int,Int) -> String
strColor (r,g,b) = "RGB(" ++ show r ++ "," ++ show g ++ "," ++ show b ++ ")"

--5
genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]
genCircs x tuplet y = [(fst tuplet+z*4,snd tuplet,y) | z <- [1..x]]

--6
genReds :: Int -> [(Int,Int,Int)]
genReds x = [(80+10*(z - 1), 0, 0) | z <- [1..x]]

import Data.Int (Int32)
main = loop (0, "")
loop :: (Int32, String) -> IO ()
loop (x', s) = do
    putStr $ s ++ ">> "
    c <- getChar
    let x = case x' of -1 -> 0; 256 -> 0; _ -> x'
    loop $ case c of
        '余' -> (x+1, "")
        '烬' -> (x-1, "")
        '之' -> (x, show x ++ "\n")
        '中' -> (x*x, "")
        _   -> (x, "\n")

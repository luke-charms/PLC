import TileTokens
import TileGrammar
import TileTypes
import TileEval
import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do putStrLn "Tile Interactive Mode - enter an expression : "
           sourceText <- getLine
           let parsedProg = parseCalc (alexScanTokens sourceText)
           putStrLn ("\n" ++ "Parsed as " ++ show parsedProg ++ "\n")
           putStrLn ("Type Checking : " ++ show parsedProg ++ "\n")
           let typedProg = typeOf [] parsedProg
           putStrLn ("Type Checking Passed with type " ++ unparseType typedProg ++ "\n")
           let result = evalLoop parsedProg
           putStrLn ("Evaluates to " ++ "\n" ++ unparse result ++ "\n")
           main'

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               putStrLn "----------------"
               hPutStrLn stderr err
               putStrLn "----------------"
               main

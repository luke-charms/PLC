{-# OPTIONS_GHC -w #-}
module TileGrammar where 
import TileTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (TileToken)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,336) ([63488,20991,12,1,0,0,0,64512,43263,6,0,0,65520,6307,65024,5247,49155,36863,98,65528,3153,65280,35391,57345,18431,49,65532,1576,65408,50463,0,8192,0,32766,788,0,128,0,4096,0,16383,394,65504,12615,0,0,0,0,0,65520,7075,65024,23679,3,0,64,0,2048,65280,43583,57345,18431,49,65532,1704,14720,54542,61440,41983,26,32766,852,65472,27279,63488,20991,13,8179,426,65504,13639,0,0,32768,8191,197,48,6305,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65408,54559,0,0,0,32768,0,0,16,0,0,0,0,32768,15,0,496,0,32768,8191,197,48,6369,256,2048,0,0,0,0,0,0,0,0,0,0,0,0,64,512,1984,0,0,0,1,65472,25231,63488,20991,12,4096,0,0,2,64512,10495,6,0,0,65520,6835,65024,5247,49155,34815,106,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Axis","Int","Tile","Blank","Cell","arr","x","y","tile","blank","reflect","rotate","scale","AND","NOT","OR","subtile","combine","lam","let","':'","'='","in","'('","')'","'['","']'","','","'.'","int","var","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (12) = happyShift action_2
action_0 (13) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (18) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (20) = happyShift action_11
action_0 (21) = happyShift action_12
action_0 (22) = happyShift action_13
action_0 (23) = happyShift action_14
action_0 (24) = happyShift action_15
action_0 (25) = happyShift action_16
action_0 (29) = happyShift action_17
action_0 (31) = happyShift action_18
action_0 (35) = happyShift action_19
action_0 (36) = happyShift action_20
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (12) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (12) = happyShift action_2
action_3 (13) = happyShift action_4
action_3 (14) = happyShift action_5
action_3 (15) = happyShift action_6
action_3 (16) = happyShift action_7
action_3 (17) = happyShift action_8
action_3 (18) = happyShift action_9
action_3 (19) = happyShift action_10
action_3 (20) = happyShift action_11
action_3 (21) = happyShift action_12
action_3 (22) = happyShift action_13
action_3 (23) = happyShift action_14
action_3 (24) = happyShift action_15
action_3 (25) = happyShift action_16
action_3 (29) = happyShift action_17
action_3 (31) = happyShift action_18
action_3 (33) = happyShift action_36
action_3 (35) = happyShift action_19
action_3 (36) = happyShift action_20
action_3 (37) = happyAccept
action_3 (4) = happyGoto action_35
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (12) = happyShift action_2
action_5 (13) = happyShift action_4
action_5 (14) = happyShift action_5
action_5 (15) = happyShift action_6
action_5 (16) = happyShift action_7
action_5 (17) = happyShift action_8
action_5 (18) = happyShift action_9
action_5 (19) = happyShift action_10
action_5 (20) = happyShift action_11
action_5 (21) = happyShift action_12
action_5 (22) = happyShift action_13
action_5 (23) = happyShift action_14
action_5 (24) = happyShift action_15
action_5 (25) = happyShift action_16
action_5 (29) = happyShift action_17
action_5 (31) = happyShift action_18
action_5 (35) = happyShift action_19
action_5 (36) = happyShift action_20
action_5 (4) = happyGoto action_34
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (12) = happyShift action_2
action_6 (13) = happyShift action_4
action_6 (14) = happyShift action_5
action_6 (15) = happyShift action_6
action_6 (16) = happyShift action_7
action_6 (17) = happyShift action_8
action_6 (18) = happyShift action_9
action_6 (19) = happyShift action_10
action_6 (20) = happyShift action_11
action_6 (21) = happyShift action_12
action_6 (22) = happyShift action_13
action_6 (23) = happyShift action_14
action_6 (24) = happyShift action_15
action_6 (25) = happyShift action_16
action_6 (29) = happyShift action_17
action_6 (31) = happyShift action_18
action_6 (35) = happyShift action_19
action_6 (36) = happyShift action_20
action_6 (4) = happyGoto action_33
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (12) = happyShift action_2
action_7 (13) = happyShift action_4
action_7 (14) = happyShift action_5
action_7 (15) = happyShift action_6
action_7 (16) = happyShift action_7
action_7 (17) = happyShift action_8
action_7 (18) = happyShift action_9
action_7 (19) = happyShift action_10
action_7 (20) = happyShift action_11
action_7 (21) = happyShift action_12
action_7 (22) = happyShift action_13
action_7 (23) = happyShift action_14
action_7 (24) = happyShift action_15
action_7 (25) = happyShift action_16
action_7 (29) = happyShift action_17
action_7 (31) = happyShift action_18
action_7 (35) = happyShift action_19
action_7 (36) = happyShift action_20
action_7 (4) = happyGoto action_32
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (12) = happyShift action_2
action_8 (13) = happyShift action_4
action_8 (14) = happyShift action_5
action_8 (15) = happyShift action_6
action_8 (16) = happyShift action_7
action_8 (17) = happyShift action_8
action_8 (18) = happyShift action_9
action_8 (19) = happyShift action_10
action_8 (20) = happyShift action_11
action_8 (21) = happyShift action_12
action_8 (22) = happyShift action_13
action_8 (23) = happyShift action_14
action_8 (24) = happyShift action_15
action_8 (25) = happyShift action_16
action_8 (29) = happyShift action_17
action_8 (31) = happyShift action_18
action_8 (35) = happyShift action_19
action_8 (36) = happyShift action_20
action_8 (4) = happyGoto action_31
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (12) = happyShift action_2
action_9 (13) = happyShift action_4
action_9 (14) = happyShift action_5
action_9 (15) = happyShift action_6
action_9 (16) = happyShift action_7
action_9 (17) = happyShift action_8
action_9 (18) = happyShift action_9
action_9 (19) = happyShift action_10
action_9 (20) = happyShift action_11
action_9 (21) = happyShift action_12
action_9 (22) = happyShift action_13
action_9 (23) = happyShift action_14
action_9 (24) = happyShift action_15
action_9 (25) = happyShift action_16
action_9 (29) = happyShift action_17
action_9 (31) = happyShift action_18
action_9 (35) = happyShift action_19
action_9 (36) = happyShift action_20
action_9 (4) = happyGoto action_30
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (12) = happyShift action_2
action_10 (13) = happyShift action_4
action_10 (14) = happyShift action_5
action_10 (15) = happyShift action_6
action_10 (16) = happyShift action_7
action_10 (17) = happyShift action_8
action_10 (18) = happyShift action_9
action_10 (19) = happyShift action_10
action_10 (20) = happyShift action_11
action_10 (21) = happyShift action_12
action_10 (22) = happyShift action_13
action_10 (23) = happyShift action_14
action_10 (24) = happyShift action_15
action_10 (25) = happyShift action_16
action_10 (29) = happyShift action_17
action_10 (31) = happyShift action_18
action_10 (35) = happyShift action_19
action_10 (36) = happyShift action_20
action_10 (4) = happyGoto action_29
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_2
action_11 (13) = happyShift action_4
action_11 (14) = happyShift action_5
action_11 (15) = happyShift action_6
action_11 (16) = happyShift action_7
action_11 (17) = happyShift action_8
action_11 (18) = happyShift action_9
action_11 (19) = happyShift action_10
action_11 (20) = happyShift action_11
action_11 (21) = happyShift action_12
action_11 (22) = happyShift action_13
action_11 (23) = happyShift action_14
action_11 (24) = happyShift action_15
action_11 (25) = happyShift action_16
action_11 (29) = happyShift action_17
action_11 (31) = happyShift action_18
action_11 (35) = happyShift action_19
action_11 (36) = happyShift action_20
action_11 (4) = happyGoto action_28
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (12) = happyShift action_2
action_12 (13) = happyShift action_4
action_12 (14) = happyShift action_5
action_12 (15) = happyShift action_6
action_12 (16) = happyShift action_7
action_12 (17) = happyShift action_8
action_12 (18) = happyShift action_9
action_12 (19) = happyShift action_10
action_12 (20) = happyShift action_11
action_12 (21) = happyShift action_12
action_12 (22) = happyShift action_13
action_12 (23) = happyShift action_14
action_12 (24) = happyShift action_15
action_12 (25) = happyShift action_16
action_12 (29) = happyShift action_17
action_12 (31) = happyShift action_18
action_12 (35) = happyShift action_19
action_12 (36) = happyShift action_20
action_12 (4) = happyGoto action_27
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (29) = happyShift action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_2
action_14 (13) = happyShift action_4
action_14 (14) = happyShift action_5
action_14 (15) = happyShift action_6
action_14 (16) = happyShift action_7
action_14 (17) = happyShift action_8
action_14 (18) = happyShift action_9
action_14 (19) = happyShift action_10
action_14 (20) = happyShift action_11
action_14 (21) = happyShift action_12
action_14 (22) = happyShift action_13
action_14 (23) = happyShift action_14
action_14 (24) = happyShift action_15
action_14 (25) = happyShift action_16
action_14 (29) = happyShift action_17
action_14 (31) = happyShift action_18
action_14 (35) = happyShift action_19
action_14 (36) = happyShift action_20
action_14 (4) = happyGoto action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (29) = happyShift action_24
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (29) = happyShift action_23
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_2
action_17 (13) = happyShift action_4
action_17 (14) = happyShift action_5
action_17 (15) = happyShift action_6
action_17 (16) = happyShift action_7
action_17 (17) = happyShift action_8
action_17 (18) = happyShift action_9
action_17 (19) = happyShift action_10
action_17 (20) = happyShift action_11
action_17 (21) = happyShift action_12
action_17 (22) = happyShift action_13
action_17 (23) = happyShift action_14
action_17 (24) = happyShift action_15
action_17 (25) = happyShift action_16
action_17 (29) = happyShift action_17
action_17 (31) = happyShift action_18
action_17 (35) = happyShift action_19
action_17 (36) = happyShift action_20
action_17 (4) = happyGoto action_22
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (12) = happyShift action_2
action_18 (13) = happyShift action_4
action_18 (14) = happyShift action_5
action_18 (15) = happyShift action_6
action_18 (16) = happyShift action_7
action_18 (17) = happyShift action_8
action_18 (18) = happyShift action_9
action_18 (19) = happyShift action_10
action_18 (20) = happyShift action_11
action_18 (21) = happyShift action_12
action_18 (22) = happyShift action_13
action_18 (23) = happyShift action_14
action_18 (24) = happyShift action_15
action_18 (25) = happyShift action_16
action_18 (29) = happyShift action_17
action_18 (31) = happyShift action_18
action_18 (35) = happyShift action_19
action_18 (36) = happyShift action_20
action_18 (4) = happyGoto action_21
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_3

action_20 _ = happyReduce_4

action_21 (12) = happyShift action_2
action_21 (13) = happyShift action_4
action_21 (14) = happyShift action_5
action_21 (15) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (18) = happyShift action_9
action_21 (19) = happyShift action_10
action_21 (20) = happyShift action_11
action_21 (21) = happyShift action_12
action_21 (22) = happyShift action_13
action_21 (23) = happyShift action_14
action_21 (24) = happyShift action_15
action_21 (25) = happyShift action_16
action_21 (29) = happyShift action_17
action_21 (31) = happyShift action_18
action_21 (32) = happyShift action_49
action_21 (33) = happyShift action_36
action_21 (35) = happyShift action_19
action_21 (36) = happyShift action_20
action_21 (4) = happyGoto action_35
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_2
action_22 (13) = happyShift action_4
action_22 (14) = happyShift action_5
action_22 (15) = happyShift action_6
action_22 (16) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (18) = happyShift action_9
action_22 (19) = happyShift action_10
action_22 (20) = happyShift action_11
action_22 (21) = happyShift action_12
action_22 (22) = happyShift action_13
action_22 (23) = happyShift action_14
action_22 (24) = happyShift action_15
action_22 (25) = happyShift action_16
action_22 (29) = happyShift action_17
action_22 (30) = happyShift action_48
action_22 (31) = happyShift action_18
action_22 (33) = happyShift action_36
action_22 (35) = happyShift action_19
action_22 (36) = happyShift action_20
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (36) = happyShift action_47
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (36) = happyShift action_46
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_2
action_25 (13) = happyShift action_4
action_25 (14) = happyShift action_5
action_25 (15) = happyShift action_6
action_25 (16) = happyShift action_7
action_25 (17) = happyShift action_8
action_25 (18) = happyShift action_9
action_25 (19) = happyShift action_10
action_25 (20) = happyShift action_11
action_25 (21) = happyShift action_12
action_25 (22) = happyShift action_13
action_25 (23) = happyShift action_14
action_25 (24) = happyShift action_15
action_25 (25) = happyShift action_16
action_25 (29) = happyShift action_17
action_25 (31) = happyShift action_18
action_25 (33) = happyShift action_36
action_25 (35) = happyShift action_19
action_25 (36) = happyShift action_20
action_25 (4) = happyGoto action_45
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_2
action_26 (13) = happyShift action_4
action_26 (14) = happyShift action_5
action_26 (15) = happyShift action_6
action_26 (16) = happyShift action_7
action_26 (17) = happyShift action_8
action_26 (18) = happyShift action_9
action_26 (19) = happyShift action_10
action_26 (20) = happyShift action_11
action_26 (21) = happyShift action_12
action_26 (22) = happyShift action_13
action_26 (23) = happyShift action_14
action_26 (24) = happyShift action_15
action_26 (25) = happyShift action_16
action_26 (29) = happyShift action_17
action_26 (31) = happyShift action_18
action_26 (35) = happyShift action_19
action_26 (36) = happyShift action_20
action_26 (4) = happyGoto action_44
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_2
action_27 (13) = happyShift action_4
action_27 (14) = happyShift action_5
action_27 (15) = happyShift action_6
action_27 (16) = happyShift action_7
action_27 (17) = happyShift action_8
action_27 (18) = happyShift action_9
action_27 (19) = happyShift action_10
action_27 (20) = happyShift action_11
action_27 (21) = happyShift action_12
action_27 (22) = happyShift action_13
action_27 (23) = happyShift action_14
action_27 (24) = happyShift action_15
action_27 (25) = happyShift action_16
action_27 (29) = happyShift action_17
action_27 (31) = happyShift action_18
action_27 (33) = happyShift action_36
action_27 (35) = happyShift action_19
action_27 (36) = happyShift action_20
action_27 (4) = happyGoto action_43
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (12) = happyShift action_2
action_28 (13) = happyShift action_4
action_28 (16) = happyShift action_7
action_28 (17) = happyShift action_8
action_28 (18) = happyShift action_9
action_28 (22) = happyShift action_13
action_28 (23) = happyShift action_14
action_28 (24) = happyShift action_15
action_28 (29) = happyShift action_17
action_28 (31) = happyShift action_18
action_28 (33) = happyShift action_36
action_28 (35) = happyShift action_19
action_28 (36) = happyShift action_20
action_28 (4) = happyGoto action_35
action_28 _ = happyReduce_11

action_29 (12) = happyShift action_2
action_29 (13) = happyShift action_4
action_29 (14) = happyShift action_5
action_29 (15) = happyShift action_6
action_29 (16) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (18) = happyShift action_9
action_29 (19) = happyShift action_10
action_29 (20) = happyShift action_11
action_29 (21) = happyShift action_12
action_29 (22) = happyShift action_13
action_29 (23) = happyShift action_14
action_29 (24) = happyShift action_15
action_29 (25) = happyShift action_16
action_29 (29) = happyShift action_17
action_29 (31) = happyShift action_18
action_29 (33) = happyShift action_36
action_29 (35) = happyShift action_19
action_29 (36) = happyShift action_20
action_29 (4) = happyGoto action_42
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_2
action_30 (13) = happyShift action_4
action_30 (14) = happyShift action_5
action_30 (15) = happyShift action_6
action_30 (16) = happyShift action_7
action_30 (17) = happyShift action_8
action_30 (18) = happyShift action_9
action_30 (19) = happyShift action_10
action_30 (20) = happyShift action_11
action_30 (21) = happyShift action_12
action_30 (22) = happyShift action_13
action_30 (23) = happyShift action_14
action_30 (24) = happyShift action_15
action_30 (25) = happyShift action_16
action_30 (29) = happyShift action_17
action_30 (31) = happyShift action_18
action_30 (33) = happyShift action_36
action_30 (35) = happyShift action_19
action_30 (36) = happyShift action_20
action_30 (4) = happyGoto action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_2
action_31 (13) = happyShift action_4
action_31 (14) = happyShift action_5
action_31 (15) = happyShift action_6
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (18) = happyShift action_9
action_31 (19) = happyShift action_10
action_31 (20) = happyShift action_11
action_31 (21) = happyShift action_12
action_31 (22) = happyShift action_13
action_31 (23) = happyShift action_14
action_31 (24) = happyShift action_15
action_31 (25) = happyShift action_16
action_31 (29) = happyShift action_17
action_31 (31) = happyShift action_18
action_31 (33) = happyShift action_36
action_31 (35) = happyShift action_19
action_31 (36) = happyShift action_20
action_31 (4) = happyGoto action_40
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (12) = happyShift action_2
action_32 (13) = happyShift action_4
action_32 (14) = happyShift action_5
action_32 (15) = happyShift action_6
action_32 (16) = happyShift action_7
action_32 (17) = happyShift action_8
action_32 (18) = happyShift action_9
action_32 (19) = happyShift action_10
action_32 (20) = happyShift action_11
action_32 (21) = happyShift action_12
action_32 (22) = happyShift action_13
action_32 (23) = happyShift action_14
action_32 (24) = happyShift action_15
action_32 (25) = happyShift action_16
action_32 (29) = happyShift action_17
action_32 (31) = happyShift action_18
action_32 (33) = happyShift action_36
action_32 (35) = happyShift action_19
action_32 (36) = happyShift action_20
action_32 (4) = happyGoto action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_2
action_33 (13) = happyShift action_4
action_33 (16) = happyShift action_7
action_33 (17) = happyShift action_8
action_33 (18) = happyShift action_9
action_33 (19) = happyShift action_10
action_33 (20) = happyShift action_11
action_33 (21) = happyShift action_12
action_33 (22) = happyShift action_13
action_33 (23) = happyShift action_14
action_33 (24) = happyShift action_15
action_33 (29) = happyShift action_17
action_33 (31) = happyShift action_18
action_33 (33) = happyShift action_36
action_33 (35) = happyShift action_19
action_33 (36) = happyShift action_20
action_33 (4) = happyGoto action_35
action_33 _ = happyReduce_6

action_34 (12) = happyShift action_2
action_34 (13) = happyShift action_4
action_34 (14) = happyShift action_5
action_34 (15) = happyShift action_6
action_34 (16) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (18) = happyShift action_9
action_34 (19) = happyShift action_10
action_34 (20) = happyShift action_11
action_34 (21) = happyShift action_12
action_34 (22) = happyShift action_13
action_34 (23) = happyShift action_14
action_34 (24) = happyShift action_15
action_34 (25) = happyShift action_16
action_34 (29) = happyShift action_17
action_34 (31) = happyShift action_18
action_34 (33) = happyShift action_36
action_34 (35) = happyShift action_19
action_34 (36) = happyShift action_20
action_34 (4) = happyGoto action_38
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (4) = happyGoto action_35
action_35 _ = happyReduce_17

action_36 (12) = happyShift action_2
action_36 (13) = happyShift action_4
action_36 (14) = happyShift action_5
action_36 (15) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (17) = happyShift action_8
action_36 (18) = happyShift action_9
action_36 (19) = happyShift action_10
action_36 (20) = happyShift action_11
action_36 (21) = happyShift action_12
action_36 (22) = happyShift action_13
action_36 (23) = happyShift action_14
action_36 (24) = happyShift action_15
action_36 (25) = happyShift action_16
action_36 (29) = happyShift action_17
action_36 (31) = happyShift action_18
action_36 (35) = happyShift action_19
action_36 (36) = happyShift action_20
action_36 (4) = happyGoto action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (12) = happyShift action_2
action_37 (13) = happyShift action_4
action_37 (24) = happyShift action_15
action_37 (29) = happyShift action_17
action_37 (31) = happyShift action_18
action_37 (35) = happyShift action_19
action_37 (36) = happyShift action_20
action_37 (4) = happyGoto action_35
action_37 _ = happyReduce_20

action_38 (28) = happyReduce_5
action_38 (30) = happyReduce_5
action_38 (32) = happyReduce_5
action_38 (37) = happyReduce_5
action_38 (4) = happyGoto action_35
action_38 _ = happyReduce_17

action_39 (28) = happyReduce_7
action_39 (30) = happyReduce_7
action_39 (32) = happyReduce_7
action_39 (37) = happyReduce_7
action_39 (4) = happyGoto action_35
action_39 _ = happyReduce_17

action_40 (28) = happyReduce_8
action_40 (30) = happyReduce_8
action_40 (32) = happyReduce_8
action_40 (37) = happyReduce_8
action_40 (4) = happyGoto action_35
action_40 _ = happyReduce_17

action_41 (28) = happyReduce_9
action_41 (30) = happyReduce_9
action_41 (32) = happyReduce_9
action_41 (37) = happyReduce_9
action_41 (4) = happyGoto action_35
action_41 _ = happyReduce_17

action_42 (28) = happyReduce_10
action_42 (30) = happyReduce_10
action_42 (32) = happyReduce_10
action_42 (37) = happyReduce_10
action_42 (4) = happyGoto action_35
action_42 _ = happyReduce_17

action_43 (28) = happyReduce_12
action_43 (30) = happyReduce_12
action_43 (32) = happyReduce_12
action_43 (37) = happyReduce_12
action_43 (4) = happyGoto action_35
action_43 _ = happyReduce_17

action_44 (12) = happyShift action_2
action_44 (13) = happyShift action_4
action_44 (14) = happyShift action_5
action_44 (15) = happyShift action_6
action_44 (16) = happyShift action_7
action_44 (17) = happyShift action_8
action_44 (18) = happyShift action_9
action_44 (19) = happyShift action_10
action_44 (20) = happyShift action_11
action_44 (21) = happyShift action_12
action_44 (22) = happyShift action_13
action_44 (23) = happyShift action_14
action_44 (24) = happyShift action_15
action_44 (25) = happyShift action_16
action_44 (29) = happyShift action_17
action_44 (31) = happyShift action_18
action_44 (33) = happyShift action_52
action_44 (35) = happyShift action_19
action_44 (36) = happyShift action_20
action_44 (4) = happyGoto action_35
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (28) = happyReduce_14
action_45 (30) = happyReduce_14
action_45 (32) = happyReduce_14
action_45 (37) = happyReduce_14
action_45 (4) = happyGoto action_35
action_45 _ = happyReduce_17

action_46 (26) = happyShift action_51
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (26) = happyShift action_50
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_18

action_49 _ = happyReduce_19

action_50 (6) = happyShift action_55
action_50 (7) = happyShift action_56
action_50 (8) = happyShift action_57
action_50 (9) = happyShift action_58
action_50 (10) = happyShift action_59
action_50 (5) = happyGoto action_60
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_55
action_51 (7) = happyShift action_56
action_51 (8) = happyShift action_57
action_51 (9) = happyShift action_58
action_51 (10) = happyShift action_59
action_51 (5) = happyGoto action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (12) = happyShift action_2
action_52 (13) = happyShift action_4
action_52 (14) = happyShift action_5
action_52 (15) = happyShift action_6
action_52 (16) = happyShift action_7
action_52 (17) = happyShift action_8
action_52 (18) = happyShift action_9
action_52 (19) = happyShift action_10
action_52 (20) = happyShift action_11
action_52 (21) = happyShift action_12
action_52 (22) = happyShift action_13
action_52 (23) = happyShift action_14
action_52 (24) = happyShift action_15
action_52 (25) = happyShift action_16
action_52 (29) = happyShift action_17
action_52 (31) = happyShift action_18
action_52 (35) = happyShift action_19
action_52 (36) = happyShift action_20
action_52 (4) = happyGoto action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_2
action_53 (13) = happyShift action_4
action_53 (24) = happyShift action_15
action_53 (29) = happyShift action_17
action_53 (30) = happyShift action_64
action_53 (31) = happyShift action_18
action_53 (35) = happyShift action_19
action_53 (36) = happyShift action_20
action_53 (4) = happyGoto action_35
action_53 _ = happyReduce_20

action_54 (11) = happyShift action_61
action_54 (30) = happyShift action_63
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_21

action_56 _ = happyReduce_22

action_57 _ = happyReduce_23

action_58 _ = happyReduce_24

action_59 _ = happyReduce_26

action_60 (11) = happyShift action_61
action_60 (30) = happyShift action_62
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_55
action_61 (7) = happyShift action_56
action_61 (8) = happyShift action_57
action_61 (9) = happyShift action_58
action_61 (10) = happyShift action_59
action_61 (5) = happyGoto action_68
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (27) = happyShift action_67
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (12) = happyShift action_2
action_63 (13) = happyShift action_4
action_63 (14) = happyShift action_5
action_63 (15) = happyShift action_6
action_63 (16) = happyShift action_7
action_63 (17) = happyShift action_8
action_63 (18) = happyShift action_9
action_63 (19) = happyShift action_10
action_63 (20) = happyShift action_11
action_63 (21) = happyShift action_12
action_63 (22) = happyShift action_13
action_63 (23) = happyShift action_14
action_63 (24) = happyShift action_15
action_63 (25) = happyShift action_16
action_63 (29) = happyShift action_17
action_63 (31) = happyShift action_18
action_63 (35) = happyShift action_19
action_63 (36) = happyShift action_20
action_63 (4) = happyGoto action_66
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (12) = happyShift action_2
action_64 (13) = happyShift action_4
action_64 (14) = happyShift action_5
action_64 (15) = happyShift action_6
action_64 (16) = happyShift action_7
action_64 (17) = happyShift action_8
action_64 (18) = happyShift action_9
action_64 (19) = happyShift action_10
action_64 (20) = happyShift action_11
action_64 (21) = happyShift action_12
action_64 (22) = happyShift action_13
action_64 (23) = happyShift action_14
action_64 (24) = happyShift action_15
action_64 (25) = happyShift action_16
action_64 (29) = happyShift action_17
action_64 (31) = happyShift action_18
action_64 (35) = happyShift action_19
action_64 (36) = happyShift action_20
action_64 (4) = happyGoto action_65
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (12) = happyFail []
action_65 (13) = happyFail []
action_65 (24) = happyShift action_15
action_65 (29) = happyFail []
action_65 (31) = happyFail []
action_65 (35) = happyFail []
action_65 (36) = happyFail []
action_65 (4) = happyGoto action_35
action_65 _ = happyReduce_13

action_66 (12) = happyFail []
action_66 (13) = happyFail []
action_66 (24) = happyShift action_15
action_66 (29) = happyFail []
action_66 (31) = happyFail []
action_66 (35) = happyFail []
action_66 (36) = happyFail []
action_66 (4) = happyGoto action_35
action_66 _ = happyReduce_15

action_67 (12) = happyShift action_2
action_67 (13) = happyShift action_4
action_67 (14) = happyShift action_5
action_67 (15) = happyShift action_6
action_67 (16) = happyShift action_7
action_67 (17) = happyShift action_8
action_67 (18) = happyShift action_9
action_67 (19) = happyShift action_10
action_67 (20) = happyShift action_11
action_67 (21) = happyShift action_12
action_67 (22) = happyShift action_13
action_67 (23) = happyShift action_14
action_67 (24) = happyShift action_15
action_67 (25) = happyShift action_16
action_67 (29) = happyShift action_17
action_67 (31) = happyShift action_18
action_67 (35) = happyShift action_19
action_67 (36) = happyShift action_20
action_67 (4) = happyGoto action_69
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_25

action_69 (12) = happyShift action_2
action_69 (13) = happyShift action_4
action_69 (14) = happyShift action_5
action_69 (15) = happyShift action_6
action_69 (16) = happyShift action_7
action_69 (17) = happyShift action_8
action_69 (18) = happyShift action_9
action_69 (19) = happyShift action_10
action_69 (20) = happyShift action_11
action_69 (21) = happyShift action_12
action_69 (22) = happyShift action_13
action_69 (23) = happyShift action_14
action_69 (24) = happyShift action_15
action_69 (25) = happyShift action_16
action_69 (28) = happyShift action_70
action_69 (29) = happyShift action_17
action_69 (31) = happyShift action_18
action_69 (33) = happyShift action_36
action_69 (35) = happyShift action_19
action_69 (36) = happyShift action_20
action_69 (4) = happyGoto action_35
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (12) = happyShift action_2
action_70 (13) = happyShift action_4
action_70 (14) = happyShift action_5
action_70 (15) = happyShift action_6
action_70 (16) = happyShift action_7
action_70 (17) = happyShift action_8
action_70 (18) = happyShift action_9
action_70 (19) = happyShift action_10
action_70 (20) = happyShift action_11
action_70 (21) = happyShift action_12
action_70 (22) = happyShift action_13
action_70 (23) = happyShift action_14
action_70 (24) = happyShift action_15
action_70 (25) = happyShift action_16
action_70 (29) = happyShift action_17
action_70 (31) = happyShift action_18
action_70 (35) = happyShift action_19
action_70 (36) = happyShift action_20
action_70 (4) = happyGoto action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (12) = happyShift action_2
action_71 (13) = happyShift action_4
action_71 (14) = happyShift action_5
action_71 (15) = happyShift action_6
action_71 (16) = happyShift action_7
action_71 (17) = happyShift action_8
action_71 (18) = happyShift action_9
action_71 (19) = happyShift action_10
action_71 (20) = happyShift action_11
action_71 (21) = happyShift action_12
action_71 (22) = happyShift action_13
action_71 (23) = happyShift action_14
action_71 (24) = happyShift action_15
action_71 (29) = happyShift action_17
action_71 (31) = happyShift action_18
action_71 (33) = happyShift action_36
action_71 (35) = happyShift action_19
action_71 (36) = happyShift action_20
action_71 (4) = happyGoto action_35
action_71 _ = happyReduce_16

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (TmX
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (TmY
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmTile happy_var_2 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmBlank happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReflect happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRotate happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmScale happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmAnd happy_var_2 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmNot happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmOr happy_var_2 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 7 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmSubtile happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCombine happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 7 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLambda happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 10 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLet happy_var_3 happy_var_5 happy_var_8 happy_var_10
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCell happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmComma happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TyAxis
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TyTile
	)

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn5
		 (TyBlank
	)

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TyCell
	)

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeAxis _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenTypeTile _ -> cont 8;
	TokenTypeBlank _ -> cont 9;
	TokenTypeCell _ -> cont 10;
	TokenTypeArr _ -> cont 11;
	TokenXAxis _ -> cont 12;
	TokenYAxis _ -> cont 13;
	TokenTile _ -> cont 14;
	TokenBlank _ -> cont 15;
	TokenReflect _ -> cont 16;
	TokenRotate _ -> cont 17;
	TokenScale _ -> cont 18;
	TokenAnd _ -> cont 19;
	TokenNot _ -> cont 20;
	TokenOr _ -> cont 21;
	TokenSubtile _ -> cont 22;
	TokenCombine _ -> cont 23;
	TokenLambda _ -> cont 24;
	TokenLet _ -> cont 25;
	TokenHasType _ -> cont 26;
	TokenEq _ -> cont 27;
	TokenIn _ -> cont 28;
	TokenLParen _ -> cont 29;
	TokenRParen _ -> cont 30;
	TokenLSquBracket _ -> cont 31;
	TokenRSquBracket _ -> cont 32;
	TokenComma _ -> cont 33;
	TokenDot _ -> cont 34;
	TokenInt _ happy_dollar_dollar -> cont 35;
	TokenVar _ happy_dollar_dollar -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(TileToken)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [TileToken] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data TileType = TyInt | TyAxis | TyTile | TyBlank | TyCell | TyFun TileType TileType
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr | TmCell Expr | TmComma Expr Expr
            | TmReflect Expr Expr 
            | TmRotate Expr Expr
            | TmScale Expr Expr
            | TmSubtile Expr Expr Expr
            | TmCombine Expr Expr
            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
            | TmVar String | TmLet String TileType Expr Expr
            | TmLambda String TileType Expr | TmApp Expr Expr 
            | Cl String TileType Expr Environment
    deriving (Show,Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

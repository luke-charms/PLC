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
happyExpList = Happy_Data_Array.listArray (0,233) ([64512,12863,512,0,0,0,65408,1607,0,0,65504,401,65520,200,32760,100,16380,50,8190,25,36863,32780,18431,49158,9215,3,4096,0,2048,63488,25727,0,0,0,0,65280,3471,0,1024,65472,803,65504,401,18224,200,32760,100,16380,50,8190,25,36863,32780,17401,49158,9215,3,0,0,0,0,0,0,0,0,0,0,0,0,0,65472,931,0,2,0,49152,3,0,16380,50,8190,32795,0,1,0,0,0,0,0,0,0,960,0,0,128,65024,6431,0,0,65408,1607,0,0,65504,409,65520,200,16376,100,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Axis","Int","Tile","Blank","arr","x","y","tile","blank","reflect","rotate","scale","AND","NOT","OR","subtile","let","':'","'='","in","'('","')'","','","int","var","%eof"]
        bit_start = st Prelude.* 31
        bit_end = (st Prelude.+ 1) Prelude.* 31
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..30]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_2
action_0 (12) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (17) = happyShift action_9
action_0 (18) = happyShift action_10
action_0 (19) = happyShift action_11
action_0 (20) = happyShift action_12
action_0 (21) = happyShift action_13
action_0 (22) = happyShift action_14
action_0 (26) = happyShift action_15
action_0 (29) = happyShift action_16
action_0 (30) = happyShift action_17
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (11) = happyShift action_2
action_3 (12) = happyShift action_4
action_3 (13) = happyShift action_5
action_3 (14) = happyShift action_6
action_3 (15) = happyShift action_7
action_3 (16) = happyShift action_8
action_3 (17) = happyShift action_9
action_3 (18) = happyShift action_10
action_3 (19) = happyShift action_11
action_3 (20) = happyShift action_12
action_3 (21) = happyShift action_13
action_3 (22) = happyShift action_14
action_3 (26) = happyShift action_15
action_3 (29) = happyShift action_16
action_3 (30) = happyShift action_17
action_3 (31) = happyAccept
action_3 (4) = happyGoto action_29
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (11) = happyShift action_2
action_5 (12) = happyShift action_4
action_5 (13) = happyShift action_5
action_5 (14) = happyShift action_6
action_5 (15) = happyShift action_7
action_5 (16) = happyShift action_8
action_5 (17) = happyShift action_9
action_5 (18) = happyShift action_10
action_5 (19) = happyShift action_11
action_5 (20) = happyShift action_12
action_5 (21) = happyShift action_13
action_5 (22) = happyShift action_14
action_5 (26) = happyShift action_15
action_5 (29) = happyShift action_16
action_5 (30) = happyShift action_17
action_5 (4) = happyGoto action_28
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (11) = happyShift action_2
action_6 (12) = happyShift action_4
action_6 (13) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (15) = happyShift action_7
action_6 (16) = happyShift action_8
action_6 (17) = happyShift action_9
action_6 (18) = happyShift action_10
action_6 (19) = happyShift action_11
action_6 (20) = happyShift action_12
action_6 (21) = happyShift action_13
action_6 (22) = happyShift action_14
action_6 (26) = happyShift action_15
action_6 (29) = happyShift action_16
action_6 (30) = happyShift action_17
action_6 (4) = happyGoto action_27
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (11) = happyShift action_2
action_7 (12) = happyShift action_4
action_7 (13) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (15) = happyShift action_7
action_7 (16) = happyShift action_8
action_7 (17) = happyShift action_9
action_7 (18) = happyShift action_10
action_7 (19) = happyShift action_11
action_7 (20) = happyShift action_12
action_7 (21) = happyShift action_13
action_7 (22) = happyShift action_14
action_7 (26) = happyShift action_15
action_7 (29) = happyShift action_16
action_7 (30) = happyShift action_17
action_7 (4) = happyGoto action_26
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (11) = happyShift action_2
action_8 (12) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (15) = happyShift action_7
action_8 (16) = happyShift action_8
action_8 (17) = happyShift action_9
action_8 (18) = happyShift action_10
action_8 (19) = happyShift action_11
action_8 (20) = happyShift action_12
action_8 (21) = happyShift action_13
action_8 (22) = happyShift action_14
action_8 (26) = happyShift action_15
action_8 (29) = happyShift action_16
action_8 (30) = happyShift action_17
action_8 (4) = happyGoto action_25
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (11) = happyShift action_2
action_9 (12) = happyShift action_4
action_9 (13) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (15) = happyShift action_7
action_9 (16) = happyShift action_8
action_9 (17) = happyShift action_9
action_9 (18) = happyShift action_10
action_9 (19) = happyShift action_11
action_9 (20) = happyShift action_12
action_9 (21) = happyShift action_13
action_9 (22) = happyShift action_14
action_9 (26) = happyShift action_15
action_9 (29) = happyShift action_16
action_9 (30) = happyShift action_17
action_9 (4) = happyGoto action_24
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (11) = happyShift action_2
action_10 (12) = happyShift action_4
action_10 (13) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (15) = happyShift action_7
action_10 (16) = happyShift action_8
action_10 (17) = happyShift action_9
action_10 (18) = happyShift action_10
action_10 (19) = happyShift action_11
action_10 (20) = happyShift action_12
action_10 (21) = happyShift action_13
action_10 (22) = happyShift action_14
action_10 (26) = happyShift action_15
action_10 (29) = happyShift action_16
action_10 (30) = happyShift action_17
action_10 (4) = happyGoto action_23
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (11) = happyShift action_2
action_11 (12) = happyShift action_4
action_11 (13) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_7
action_11 (16) = happyShift action_8
action_11 (17) = happyShift action_9
action_11 (18) = happyShift action_10
action_11 (19) = happyShift action_11
action_11 (20) = happyShift action_12
action_11 (21) = happyShift action_13
action_11 (22) = happyShift action_14
action_11 (26) = happyShift action_15
action_11 (29) = happyShift action_16
action_11 (30) = happyShift action_17
action_11 (4) = happyGoto action_22
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_2
action_12 (12) = happyShift action_4
action_12 (13) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (15) = happyShift action_7
action_12 (16) = happyShift action_8
action_12 (17) = happyShift action_9
action_12 (18) = happyShift action_10
action_12 (19) = happyShift action_11
action_12 (20) = happyShift action_12
action_12 (21) = happyShift action_13
action_12 (22) = happyShift action_14
action_12 (26) = happyShift action_15
action_12 (29) = happyShift action_16
action_12 (30) = happyShift action_17
action_12 (4) = happyGoto action_21
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (26) = happyShift action_20
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (26) = happyShift action_19
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyShift action_2
action_15 (12) = happyShift action_4
action_15 (13) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (15) = happyShift action_7
action_15 (16) = happyShift action_8
action_15 (17) = happyShift action_9
action_15 (18) = happyShift action_10
action_15 (19) = happyShift action_11
action_15 (20) = happyShift action_12
action_15 (21) = happyShift action_13
action_15 (22) = happyShift action_14
action_15 (26) = happyShift action_15
action_15 (29) = happyShift action_16
action_15 (30) = happyShift action_17
action_15 (4) = happyGoto action_18
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_3

action_17 _ = happyReduce_4

action_18 (11) = happyShift action_2
action_18 (12) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (15) = happyShift action_7
action_18 (16) = happyShift action_8
action_18 (17) = happyShift action_9
action_18 (18) = happyShift action_10
action_18 (19) = happyShift action_11
action_18 (20) = happyShift action_12
action_18 (21) = happyShift action_13
action_18 (22) = happyShift action_14
action_18 (26) = happyShift action_15
action_18 (27) = happyShift action_38
action_18 (29) = happyShift action_16
action_18 (30) = happyShift action_17
action_18 (4) = happyGoto action_29
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (30) = happyShift action_37
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_2
action_20 (12) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (15) = happyShift action_7
action_20 (16) = happyShift action_8
action_20 (17) = happyShift action_9
action_20 (18) = happyShift action_10
action_20 (19) = happyShift action_11
action_20 (20) = happyShift action_12
action_20 (21) = happyShift action_13
action_20 (22) = happyShift action_14
action_20 (26) = happyShift action_15
action_20 (29) = happyShift action_16
action_20 (30) = happyShift action_17
action_20 (4) = happyGoto action_36
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_2
action_21 (12) = happyShift action_4
action_21 (13) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (15) = happyShift action_7
action_21 (16) = happyShift action_8
action_21 (17) = happyShift action_9
action_21 (18) = happyShift action_10
action_21 (19) = happyShift action_11
action_21 (20) = happyShift action_12
action_21 (21) = happyShift action_13
action_21 (22) = happyShift action_14
action_21 (26) = happyShift action_15
action_21 (29) = happyShift action_16
action_21 (30) = happyShift action_17
action_21 (4) = happyGoto action_35
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_2
action_22 (12) = happyShift action_4
action_22 (15) = happyShift action_7
action_22 (16) = happyShift action_8
action_22 (17) = happyShift action_9
action_22 (21) = happyShift action_13
action_22 (26) = happyShift action_15
action_22 (29) = happyShift action_16
action_22 (30) = happyShift action_17
action_22 (4) = happyGoto action_29
action_22 _ = happyReduce_11

action_23 (11) = happyShift action_2
action_23 (12) = happyShift action_4
action_23 (13) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (15) = happyShift action_7
action_23 (16) = happyShift action_8
action_23 (17) = happyShift action_9
action_23 (18) = happyShift action_10
action_23 (19) = happyShift action_11
action_23 (20) = happyShift action_12
action_23 (21) = happyShift action_13
action_23 (22) = happyShift action_14
action_23 (26) = happyShift action_15
action_23 (29) = happyShift action_16
action_23 (30) = happyShift action_17
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_2
action_24 (12) = happyShift action_4
action_24 (13) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (15) = happyShift action_7
action_24 (16) = happyShift action_8
action_24 (17) = happyShift action_9
action_24 (18) = happyShift action_10
action_24 (19) = happyShift action_11
action_24 (20) = happyShift action_12
action_24 (21) = happyShift action_13
action_24 (22) = happyShift action_14
action_24 (26) = happyShift action_15
action_24 (29) = happyShift action_16
action_24 (30) = happyShift action_17
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_2
action_25 (12) = happyShift action_4
action_25 (13) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (15) = happyShift action_7
action_25 (16) = happyShift action_8
action_25 (17) = happyShift action_9
action_25 (18) = happyShift action_10
action_25 (19) = happyShift action_11
action_25 (20) = happyShift action_12
action_25 (21) = happyShift action_13
action_25 (22) = happyShift action_14
action_25 (26) = happyShift action_15
action_25 (29) = happyShift action_16
action_25 (30) = happyShift action_17
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_2
action_26 (12) = happyShift action_4
action_26 (13) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (15) = happyShift action_7
action_26 (16) = happyShift action_8
action_26 (17) = happyShift action_9
action_26 (18) = happyShift action_10
action_26 (19) = happyShift action_11
action_26 (20) = happyShift action_12
action_26 (21) = happyShift action_13
action_26 (22) = happyShift action_14
action_26 (26) = happyShift action_15
action_26 (29) = happyShift action_16
action_26 (30) = happyShift action_17
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_2
action_27 (12) = happyShift action_4
action_27 (15) = happyShift action_7
action_27 (16) = happyShift action_8
action_27 (17) = happyShift action_9
action_27 (18) = happyShift action_10
action_27 (19) = happyShift action_11
action_27 (20) = happyShift action_12
action_27 (21) = happyShift action_13
action_27 (26) = happyShift action_15
action_27 (29) = happyShift action_16
action_27 (30) = happyShift action_17
action_27 (4) = happyGoto action_29
action_27 _ = happyReduce_6

action_28 (11) = happyShift action_2
action_28 (12) = happyShift action_4
action_28 (13) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (15) = happyShift action_7
action_28 (16) = happyShift action_8
action_28 (17) = happyShift action_9
action_28 (18) = happyShift action_10
action_28 (19) = happyShift action_11
action_28 (20) = happyShift action_12
action_28 (21) = happyShift action_13
action_28 (22) = happyShift action_14
action_28 (26) = happyShift action_15
action_28 (29) = happyShift action_16
action_28 (30) = happyShift action_17
action_28 (4) = happyGoto action_30
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (4) = happyGoto action_29
action_29 _ = happyReduce_15

action_30 (25) = happyReduce_5
action_30 (27) = happyReduce_5
action_30 (28) = happyReduce_5
action_30 (31) = happyReduce_5
action_30 (4) = happyGoto action_29
action_30 _ = happyReduce_15

action_31 (25) = happyReduce_7
action_31 (27) = happyReduce_7
action_31 (28) = happyReduce_7
action_31 (31) = happyReduce_7
action_31 (4) = happyGoto action_29
action_31 _ = happyReduce_15

action_32 (25) = happyReduce_8
action_32 (27) = happyReduce_8
action_32 (28) = happyReduce_8
action_32 (31) = happyReduce_8
action_32 (4) = happyGoto action_29
action_32 _ = happyReduce_15

action_33 (25) = happyReduce_9
action_33 (27) = happyReduce_9
action_33 (28) = happyReduce_9
action_33 (31) = happyReduce_9
action_33 (4) = happyGoto action_29
action_33 _ = happyReduce_15

action_34 (25) = happyReduce_10
action_34 (27) = happyReduce_10
action_34 (28) = happyReduce_10
action_34 (31) = happyReduce_10
action_34 (4) = happyGoto action_29
action_34 _ = happyReduce_15

action_35 (25) = happyReduce_12
action_35 (27) = happyReduce_12
action_35 (28) = happyReduce_12
action_35 (31) = happyReduce_12
action_35 (4) = happyGoto action_29
action_35 _ = happyReduce_15

action_36 (11) = happyShift action_2
action_36 (12) = happyShift action_4
action_36 (13) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (15) = happyShift action_7
action_36 (16) = happyShift action_8
action_36 (17) = happyShift action_9
action_36 (18) = happyShift action_10
action_36 (19) = happyShift action_11
action_36 (20) = happyShift action_12
action_36 (21) = happyShift action_13
action_36 (22) = happyShift action_14
action_36 (26) = happyShift action_15
action_36 (28) = happyShift action_40
action_36 (29) = happyShift action_16
action_36 (30) = happyShift action_17
action_36 (4) = happyGoto action_29
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (23) = happyShift action_39
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_16

action_39 (6) = happyShift action_43
action_39 (7) = happyShift action_44
action_39 (8) = happyShift action_45
action_39 (9) = happyShift action_46
action_39 (5) = happyGoto action_42
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (11) = happyShift action_2
action_40 (12) = happyShift action_4
action_40 (13) = happyShift action_5
action_40 (14) = happyShift action_6
action_40 (15) = happyShift action_7
action_40 (16) = happyShift action_8
action_40 (17) = happyShift action_9
action_40 (18) = happyShift action_10
action_40 (19) = happyShift action_11
action_40 (20) = happyShift action_12
action_40 (21) = happyShift action_13
action_40 (22) = happyShift action_14
action_40 (26) = happyShift action_15
action_40 (29) = happyShift action_16
action_40 (30) = happyShift action_17
action_40 (4) = happyGoto action_41
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (11) = happyShift action_2
action_41 (12) = happyShift action_4
action_41 (13) = happyShift action_5
action_41 (14) = happyShift action_6
action_41 (15) = happyShift action_7
action_41 (16) = happyShift action_8
action_41 (17) = happyShift action_9
action_41 (18) = happyShift action_10
action_41 (19) = happyShift action_11
action_41 (20) = happyShift action_12
action_41 (21) = happyShift action_13
action_41 (22) = happyShift action_14
action_41 (26) = happyShift action_15
action_41 (27) = happyShift action_49
action_41 (29) = happyShift action_16
action_41 (30) = happyShift action_17
action_41 (4) = happyGoto action_29
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (10) = happyShift action_47
action_42 (27) = happyShift action_48
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_17

action_44 _ = happyReduce_18

action_45 _ = happyReduce_19

action_46 _ = happyReduce_20

action_47 (6) = happyShift action_43
action_47 (7) = happyShift action_44
action_47 (8) = happyShift action_45
action_47 (9) = happyShift action_46
action_47 (5) = happyGoto action_52
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (24) = happyShift action_51
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (11) = happyShift action_2
action_49 (12) = happyShift action_4
action_49 (13) = happyShift action_5
action_49 (14) = happyShift action_6
action_49 (15) = happyShift action_7
action_49 (16) = happyShift action_8
action_49 (17) = happyShift action_9
action_49 (18) = happyShift action_10
action_49 (19) = happyShift action_11
action_49 (20) = happyShift action_12
action_49 (21) = happyShift action_13
action_49 (22) = happyShift action_14
action_49 (26) = happyShift action_15
action_49 (29) = happyShift action_16
action_49 (30) = happyShift action_17
action_49 (4) = happyGoto action_50
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (11) = happyFail []
action_50 (12) = happyFail []
action_50 (26) = happyFail []
action_50 (29) = happyFail []
action_50 (30) = happyFail []
action_50 (4) = happyGoto action_29
action_50 _ = happyReduce_13

action_51 (11) = happyShift action_2
action_51 (12) = happyShift action_4
action_51 (13) = happyShift action_5
action_51 (14) = happyShift action_6
action_51 (15) = happyShift action_7
action_51 (16) = happyShift action_8
action_51 (17) = happyShift action_9
action_51 (18) = happyShift action_10
action_51 (19) = happyShift action_11
action_51 (20) = happyShift action_12
action_51 (21) = happyShift action_13
action_51 (22) = happyShift action_14
action_51 (26) = happyShift action_15
action_51 (29) = happyShift action_16
action_51 (30) = happyShift action_17
action_51 (4) = happyGoto action_53
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_21

action_53 (11) = happyShift action_2
action_53 (12) = happyShift action_4
action_53 (13) = happyShift action_5
action_53 (14) = happyShift action_6
action_53 (15) = happyShift action_7
action_53 (16) = happyShift action_8
action_53 (17) = happyShift action_9
action_53 (18) = happyShift action_10
action_53 (19) = happyShift action_11
action_53 (20) = happyShift action_12
action_53 (21) = happyShift action_13
action_53 (22) = happyShift action_14
action_53 (25) = happyShift action_54
action_53 (26) = happyShift action_15
action_53 (29) = happyShift action_16
action_53 (30) = happyShift action_17
action_53 (4) = happyGoto action_29
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_2
action_54 (12) = happyShift action_4
action_54 (13) = happyShift action_5
action_54 (14) = happyShift action_6
action_54 (15) = happyShift action_7
action_54 (16) = happyShift action_8
action_54 (17) = happyShift action_9
action_54 (18) = happyShift action_10
action_54 (19) = happyShift action_11
action_54 (20) = happyShift action_12
action_54 (21) = happyShift action_13
action_54 (22) = happyShift action_14
action_54 (26) = happyShift action_15
action_54 (29) = happyShift action_16
action_54 (30) = happyShift action_17
action_54 (4) = happyGoto action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_2
action_55 (12) = happyShift action_4
action_55 (13) = happyShift action_5
action_55 (14) = happyShift action_6
action_55 (15) = happyShift action_7
action_55 (16) = happyShift action_8
action_55 (17) = happyShift action_9
action_55 (18) = happyShift action_10
action_55 (19) = happyShift action_11
action_55 (20) = happyShift action_12
action_55 (21) = happyShift action_13
action_55 (26) = happyShift action_15
action_55 (29) = happyShift action_16
action_55 (30) = happyShift action_17
action_55 (4) = happyGoto action_29
action_55 _ = happyReduce_14

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

happyReduce_14 = happyReduce 10 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_10) `HappyStk`
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

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn5
		 (TyAxis
	)

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn5
		 (TyTile
	)

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn5
		 (TyBlank
	)

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 31 31 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeAxis _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenTypeTile _ -> cont 8;
	TokenTypeBlank _ -> cont 9;
	TokenTypeArr _ -> cont 10;
	TokenXAxis _ -> cont 11;
	TokenYAxis _ -> cont 12;
	TokenTile _ -> cont 13;
	TokenBlank _ -> cont 14;
	TokenReflect _ -> cont 15;
	TokenRotate _ -> cont 16;
	TokenScale _ -> cont 17;
	TokenAnd _ -> cont 18;
	TokenNot _ -> cont 19;
	TokenOr _ -> cont 20;
	TokenSubtile _ -> cont 21;
	TokenLet _ -> cont 22;
	TokenHasType _ -> cont 23;
	TokenEq _ -> cont 24;
	TokenIn _ -> cont 25;
	TokenLParen _ -> cont 26;
	TokenRParen _ -> cont 27;
	TokenComma _ -> cont 28;
	TokenInt _ happy_dollar_dollar -> cont 29;
	TokenVar _ happy_dollar_dollar -> cont 30;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 31 tk tks = happyError' (tks, explist)
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

data TileType = TyInt | TyAxis | TyTile | TyBlank | TyFun TileType TileType
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr
            | TmReflect Expr Expr 
            | TmRotate Expr Expr
            | TmScale Expr Expr
            | TmSubtile Expr Expr Expr
            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
            | TmVar String | TmLet String TileType Expr Expr
            | TmApp Expr Expr 
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

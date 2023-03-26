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
happyExpList = Happy_Data_Array.listArray (0,419) ([63488,20991,32774,0,0,0,0,65408,29983,0,0,32768,8191,101,65528,1617,65408,25887,63488,20991,32774,8191,101,65528,1617,65408,25887,63488,20991,6,0,1,65528,1617,0,256,0,4096,32768,8191,101,65528,1617,0,0,0,0,32768,8191,125,65528,1617,65408,30495,0,0,4,0,64,65528,1873,65408,25887,63488,20991,32775,3641,117,65528,1873,65408,29983,63488,20991,32775,8191,117,65432,1872,65408,29983,0,0,32768,8191,101,32792,1616,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,8191,117,0,0,0,32,0,512,0,0,0,65528,2001,0,0,0,0,15872,0,57344,3,0,65408,25887,6144,28800,16390,0,18,0,0,0,0,0,0,0,0,57344,3,0,64,4608,0,0,15872,0,0,0,4,62,0,0,0,32769,8191,101,65528,1617,0,8,0,128,0,0,0,65528,1617,0,4096,63488,23039,32775,8191,101,65528,1872,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Axis","Int","Tile","Blank","Cell","arr","x","y","tile","blank","reflect","rotate","scale","AND","NOT","OR","subtile","combine","lam","let","':'","'='","in","'('","')'","'['","']'","','","int","var","%eof"]
        bit_start = st Prelude.* 36
        bit_end = (st Prelude.+ 1) Prelude.* 36
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..35]
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
action_0 (34) = happyShift action_19
action_0 (35) = happyShift action_20
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
action_3 (33) = happyShift action_37
action_3 (34) = happyShift action_19
action_3 (35) = happyShift action_20
action_3 (36) = happyAccept
action_3 (4) = happyGoto action_36
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
action_5 (34) = happyShift action_19
action_5 (35) = happyShift action_20
action_5 (4) = happyGoto action_35
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
action_6 (34) = happyShift action_19
action_6 (35) = happyShift action_20
action_6 (4) = happyGoto action_34
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
action_7 (34) = happyShift action_19
action_7 (35) = happyShift action_20
action_7 (4) = happyGoto action_33
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
action_8 (34) = happyShift action_19
action_8 (35) = happyShift action_20
action_8 (4) = happyGoto action_32
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
action_9 (34) = happyShift action_19
action_9 (35) = happyShift action_20
action_9 (4) = happyGoto action_31
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
action_10 (34) = happyShift action_19
action_10 (35) = happyShift action_20
action_10 (4) = happyGoto action_30
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
action_11 (34) = happyShift action_19
action_11 (35) = happyShift action_20
action_11 (4) = happyGoto action_29
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
action_12 (34) = happyShift action_19
action_12 (35) = happyShift action_20
action_12 (4) = happyGoto action_28
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (29) = happyShift action_27
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
action_14 (34) = happyShift action_19
action_14 (35) = happyShift action_20
action_14 (4) = happyGoto action_26
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (29) = happyShift action_25
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (29) = happyShift action_24
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
action_17 (34) = happyShift action_19
action_17 (35) = happyShift action_20
action_17 (4) = happyGoto action_23
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
action_18 (31) = happyShift action_22
action_18 (34) = happyShift action_19
action_18 (35) = happyShift action_20
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
action_21 (32) = happyShift action_51
action_21 (33) = happyShift action_37
action_21 (34) = happyShift action_19
action_21 (35) = happyShift action_20
action_21 (4) = happyGoto action_36
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
action_22 (31) = happyShift action_22
action_22 (34) = happyShift action_19
action_22 (35) = happyShift action_20
action_22 (4) = happyGoto action_50
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_2
action_23 (13) = happyShift action_4
action_23 (14) = happyShift action_5
action_23 (15) = happyShift action_6
action_23 (16) = happyShift action_7
action_23 (17) = happyShift action_8
action_23 (18) = happyShift action_9
action_23 (19) = happyShift action_10
action_23 (20) = happyShift action_11
action_23 (21) = happyShift action_12
action_23 (22) = happyShift action_13
action_23 (23) = happyShift action_14
action_23 (24) = happyShift action_15
action_23 (25) = happyShift action_16
action_23 (29) = happyShift action_17
action_23 (30) = happyShift action_49
action_23 (31) = happyShift action_18
action_23 (33) = happyShift action_37
action_23 (34) = happyShift action_19
action_23 (35) = happyShift action_20
action_23 (4) = happyGoto action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (35) = happyShift action_48
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (35) = happyShift action_47
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
action_26 (33) = happyShift action_37
action_26 (34) = happyShift action_19
action_26 (35) = happyShift action_20
action_26 (4) = happyGoto action_46
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
action_27 (34) = happyShift action_19
action_27 (35) = happyShift action_20
action_27 (4) = happyGoto action_45
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (12) = happyShift action_2
action_28 (13) = happyShift action_4
action_28 (14) = happyShift action_5
action_28 (15) = happyShift action_6
action_28 (16) = happyShift action_7
action_28 (17) = happyShift action_8
action_28 (18) = happyShift action_9
action_28 (19) = happyShift action_10
action_28 (20) = happyShift action_11
action_28 (21) = happyShift action_12
action_28 (22) = happyShift action_13
action_28 (23) = happyShift action_14
action_28 (24) = happyShift action_15
action_28 (25) = happyShift action_16
action_28 (29) = happyShift action_17
action_28 (31) = happyShift action_18
action_28 (33) = happyShift action_37
action_28 (34) = happyShift action_19
action_28 (35) = happyShift action_20
action_28 (4) = happyGoto action_44
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (12) = happyShift action_2
action_29 (13) = happyShift action_4
action_29 (16) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (18) = happyShift action_9
action_29 (22) = happyShift action_13
action_29 (23) = happyShift action_14
action_29 (24) = happyShift action_15
action_29 (29) = happyShift action_17
action_29 (31) = happyShift action_18
action_29 (33) = happyShift action_37
action_29 (34) = happyShift action_19
action_29 (35) = happyShift action_20
action_29 (4) = happyGoto action_36
action_29 _ = happyReduce_11

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
action_30 (33) = happyShift action_37
action_30 (34) = happyShift action_19
action_30 (35) = happyShift action_20
action_30 (4) = happyGoto action_43
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
action_31 (33) = happyShift action_37
action_31 (34) = happyShift action_19
action_31 (35) = happyShift action_20
action_31 (4) = happyGoto action_42
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
action_32 (33) = happyShift action_37
action_32 (34) = happyShift action_19
action_32 (35) = happyShift action_20
action_32 (4) = happyGoto action_41
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_2
action_33 (13) = happyShift action_4
action_33 (14) = happyShift action_5
action_33 (15) = happyShift action_6
action_33 (16) = happyShift action_7
action_33 (17) = happyShift action_8
action_33 (18) = happyShift action_9
action_33 (19) = happyShift action_10
action_33 (20) = happyShift action_11
action_33 (21) = happyShift action_12
action_33 (22) = happyShift action_13
action_33 (23) = happyShift action_14
action_33 (24) = happyShift action_15
action_33 (25) = happyShift action_16
action_33 (29) = happyShift action_17
action_33 (31) = happyShift action_18
action_33 (33) = happyShift action_37
action_33 (34) = happyShift action_19
action_33 (35) = happyShift action_20
action_33 (4) = happyGoto action_40
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_2
action_34 (13) = happyShift action_4
action_34 (16) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (18) = happyShift action_9
action_34 (19) = happyShift action_10
action_34 (20) = happyShift action_11
action_34 (21) = happyShift action_12
action_34 (22) = happyShift action_13
action_34 (23) = happyShift action_14
action_34 (24) = happyShift action_15
action_34 (29) = happyShift action_17
action_34 (31) = happyShift action_18
action_34 (33) = happyShift action_37
action_34 (34) = happyShift action_19
action_34 (35) = happyShift action_20
action_34 (4) = happyGoto action_36
action_34 _ = happyReduce_6

action_35 (12) = happyShift action_2
action_35 (13) = happyShift action_4
action_35 (14) = happyShift action_5
action_35 (15) = happyShift action_6
action_35 (16) = happyShift action_7
action_35 (17) = happyShift action_8
action_35 (18) = happyShift action_9
action_35 (19) = happyShift action_10
action_35 (20) = happyShift action_11
action_35 (21) = happyShift action_12
action_35 (22) = happyShift action_13
action_35 (23) = happyShift action_14
action_35 (24) = happyShift action_15
action_35 (25) = happyShift action_16
action_35 (29) = happyShift action_17
action_35 (31) = happyShift action_18
action_35 (33) = happyShift action_37
action_35 (34) = happyShift action_19
action_35 (35) = happyShift action_20
action_35 (4) = happyGoto action_39
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (4) = happyGoto action_36
action_36 _ = happyReduce_17

action_37 (12) = happyShift action_2
action_37 (13) = happyShift action_4
action_37 (14) = happyShift action_5
action_37 (15) = happyShift action_6
action_37 (16) = happyShift action_7
action_37 (17) = happyShift action_8
action_37 (18) = happyShift action_9
action_37 (19) = happyShift action_10
action_37 (20) = happyShift action_11
action_37 (21) = happyShift action_12
action_37 (22) = happyShift action_13
action_37 (23) = happyShift action_14
action_37 (24) = happyShift action_15
action_37 (25) = happyShift action_16
action_37 (29) = happyShift action_17
action_37 (31) = happyShift action_18
action_37 (34) = happyShift action_19
action_37 (35) = happyShift action_20
action_37 (4) = happyGoto action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (12) = happyShift action_2
action_38 (13) = happyShift action_4
action_38 (24) = happyShift action_15
action_38 (29) = happyShift action_17
action_38 (31) = happyShift action_18
action_38 (34) = happyShift action_19
action_38 (35) = happyShift action_20
action_38 (4) = happyGoto action_36
action_38 _ = happyReduce_21

action_39 (28) = happyReduce_5
action_39 (30) = happyReduce_5
action_39 (32) = happyReduce_5
action_39 (36) = happyReduce_5
action_39 (4) = happyGoto action_36
action_39 _ = happyReduce_17

action_40 (28) = happyReduce_7
action_40 (30) = happyReduce_7
action_40 (32) = happyReduce_7
action_40 (36) = happyReduce_7
action_40 (4) = happyGoto action_36
action_40 _ = happyReduce_17

action_41 (28) = happyReduce_8
action_41 (30) = happyReduce_8
action_41 (32) = happyReduce_8
action_41 (36) = happyReduce_8
action_41 (4) = happyGoto action_36
action_41 _ = happyReduce_17

action_42 (28) = happyReduce_9
action_42 (30) = happyReduce_9
action_42 (32) = happyReduce_9
action_42 (36) = happyReduce_9
action_42 (4) = happyGoto action_36
action_42 _ = happyReduce_17

action_43 (28) = happyReduce_10
action_43 (30) = happyReduce_10
action_43 (32) = happyReduce_10
action_43 (36) = happyReduce_10
action_43 (4) = happyGoto action_36
action_43 _ = happyReduce_17

action_44 (28) = happyReduce_12
action_44 (30) = happyReduce_12
action_44 (32) = happyReduce_12
action_44 (36) = happyReduce_12
action_44 (4) = happyGoto action_36
action_44 _ = happyReduce_17

action_45 (12) = happyShift action_2
action_45 (13) = happyShift action_4
action_45 (14) = happyShift action_5
action_45 (15) = happyShift action_6
action_45 (16) = happyShift action_7
action_45 (17) = happyShift action_8
action_45 (18) = happyShift action_9
action_45 (19) = happyShift action_10
action_45 (20) = happyShift action_11
action_45 (21) = happyShift action_12
action_45 (22) = happyShift action_13
action_45 (23) = happyShift action_14
action_45 (24) = happyShift action_15
action_45 (25) = happyShift action_16
action_45 (29) = happyShift action_17
action_45 (31) = happyShift action_18
action_45 (33) = happyShift action_55
action_45 (34) = happyShift action_19
action_45 (35) = happyShift action_20
action_45 (4) = happyGoto action_36
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (28) = happyReduce_14
action_46 (30) = happyReduce_14
action_46 (32) = happyReduce_14
action_46 (36) = happyReduce_14
action_46 (4) = happyGoto action_36
action_46 _ = happyReduce_17

action_47 (26) = happyShift action_54
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (26) = happyShift action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_18

action_50 (12) = happyShift action_2
action_50 (13) = happyShift action_4
action_50 (14) = happyShift action_5
action_50 (15) = happyShift action_6
action_50 (16) = happyShift action_7
action_50 (17) = happyShift action_8
action_50 (18) = happyShift action_9
action_50 (19) = happyShift action_10
action_50 (20) = happyShift action_11
action_50 (21) = happyShift action_12
action_50 (22) = happyShift action_13
action_50 (23) = happyShift action_14
action_50 (24) = happyShift action_15
action_50 (25) = happyShift action_16
action_50 (29) = happyShift action_17
action_50 (31) = happyShift action_18
action_50 (32) = happyShift action_52
action_50 (33) = happyShift action_37
action_50 (34) = happyShift action_19
action_50 (35) = happyShift action_20
action_50 (4) = happyGoto action_36
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_20

action_52 (32) = happyFail []
action_52 _ = happyReduce_20

action_53 (6) = happyShift action_58
action_53 (7) = happyShift action_59
action_53 (8) = happyShift action_60
action_53 (9) = happyShift action_61
action_53 (10) = happyShift action_62
action_53 (5) = happyGoto action_63
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_58
action_54 (7) = happyShift action_59
action_54 (8) = happyShift action_60
action_54 (9) = happyShift action_61
action_54 (10) = happyShift action_62
action_54 (5) = happyGoto action_57
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (12) = happyShift action_2
action_55 (13) = happyShift action_4
action_55 (14) = happyShift action_5
action_55 (15) = happyShift action_6
action_55 (16) = happyShift action_7
action_55 (17) = happyShift action_8
action_55 (18) = happyShift action_9
action_55 (19) = happyShift action_10
action_55 (20) = happyShift action_11
action_55 (21) = happyShift action_12
action_55 (22) = happyShift action_13
action_55 (23) = happyShift action_14
action_55 (24) = happyShift action_15
action_55 (25) = happyShift action_16
action_55 (29) = happyShift action_17
action_55 (31) = happyShift action_18
action_55 (34) = happyShift action_19
action_55 (35) = happyShift action_20
action_55 (4) = happyGoto action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (12) = happyShift action_2
action_56 (13) = happyShift action_4
action_56 (24) = happyShift action_15
action_56 (29) = happyShift action_17
action_56 (30) = happyShift action_70
action_56 (31) = happyShift action_18
action_56 (34) = happyShift action_19
action_56 (35) = happyShift action_20
action_56 (4) = happyGoto action_36
action_56 _ = happyReduce_21

action_57 (11) = happyShift action_65
action_57 (30) = happyShift action_69
action_57 (33) = happyShift action_67
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_22

action_59 _ = happyReduce_23

action_60 _ = happyReduce_24

action_61 _ = happyReduce_25

action_62 (6) = happyShift action_58
action_62 (7) = happyShift action_59
action_62 (8) = happyShift action_60
action_62 (9) = happyShift action_61
action_62 (10) = happyShift action_62
action_62 (5) = happyGoto action_68
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (11) = happyShift action_65
action_63 (30) = happyShift action_66
action_63 (33) = happyShift action_67
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_19

action_65 (6) = happyShift action_58
action_65 (7) = happyShift action_59
action_65 (8) = happyShift action_60
action_65 (9) = happyShift action_61
action_65 (10) = happyShift action_62
action_65 (5) = happyGoto action_75
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (27) = happyShift action_74
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (6) = happyShift action_58
action_67 (7) = happyShift action_59
action_67 (8) = happyShift action_60
action_67 (9) = happyShift action_61
action_67 (10) = happyShift action_62
action_67 (5) = happyGoto action_73
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (33) = happyShift action_67
action_68 _ = happyReduce_27

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
action_69 (29) = happyShift action_17
action_69 (31) = happyShift action_18
action_69 (34) = happyShift action_19
action_69 (35) = happyShift action_20
action_69 (4) = happyGoto action_72
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
action_70 (34) = happyShift action_19
action_70 (35) = happyShift action_20
action_70 (4) = happyGoto action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (12) = happyFail []
action_71 (13) = happyFail []
action_71 (24) = happyShift action_15
action_71 (29) = happyFail []
action_71 (31) = happyFail []
action_71 (34) = happyFail []
action_71 (35) = happyFail []
action_71 (4) = happyGoto action_36
action_71 _ = happyReduce_13

action_72 (12) = happyFail []
action_72 (13) = happyFail []
action_72 (24) = happyShift action_15
action_72 (29) = happyFail []
action_72 (31) = happyFail []
action_72 (34) = happyFail []
action_72 (35) = happyFail []
action_72 (4) = happyGoto action_36
action_72 _ = happyReduce_15

action_73 _ = happyReduce_28

action_74 (12) = happyShift action_2
action_74 (13) = happyShift action_4
action_74 (14) = happyShift action_5
action_74 (15) = happyShift action_6
action_74 (16) = happyShift action_7
action_74 (17) = happyShift action_8
action_74 (18) = happyShift action_9
action_74 (19) = happyShift action_10
action_74 (20) = happyShift action_11
action_74 (21) = happyShift action_12
action_74 (22) = happyShift action_13
action_74 (23) = happyShift action_14
action_74 (24) = happyShift action_15
action_74 (25) = happyShift action_16
action_74 (29) = happyShift action_17
action_74 (31) = happyShift action_18
action_74 (34) = happyShift action_19
action_74 (35) = happyShift action_20
action_74 (4) = happyGoto action_76
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (33) = happyShift action_67
action_75 _ = happyReduce_26

action_76 (12) = happyShift action_2
action_76 (13) = happyShift action_4
action_76 (14) = happyShift action_5
action_76 (15) = happyShift action_6
action_76 (16) = happyShift action_7
action_76 (17) = happyShift action_8
action_76 (18) = happyShift action_9
action_76 (19) = happyShift action_10
action_76 (20) = happyShift action_11
action_76 (21) = happyShift action_12
action_76 (22) = happyShift action_13
action_76 (23) = happyShift action_14
action_76 (24) = happyShift action_15
action_76 (25) = happyShift action_16
action_76 (28) = happyShift action_77
action_76 (29) = happyShift action_17
action_76 (31) = happyShift action_18
action_76 (33) = happyShift action_37
action_76 (34) = happyShift action_19
action_76 (35) = happyShift action_20
action_76 (4) = happyGoto action_36
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (12) = happyShift action_2
action_77 (13) = happyShift action_4
action_77 (14) = happyShift action_5
action_77 (15) = happyShift action_6
action_77 (16) = happyShift action_7
action_77 (17) = happyShift action_8
action_77 (18) = happyShift action_9
action_77 (19) = happyShift action_10
action_77 (20) = happyShift action_11
action_77 (21) = happyShift action_12
action_77 (22) = happyShift action_13
action_77 (23) = happyShift action_14
action_77 (24) = happyShift action_15
action_77 (25) = happyShift action_16
action_77 (29) = happyShift action_17
action_77 (31) = happyShift action_18
action_77 (34) = happyShift action_19
action_77 (35) = happyShift action_20
action_77 (4) = happyGoto action_78
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (12) = happyShift action_2
action_78 (13) = happyShift action_4
action_78 (14) = happyShift action_5
action_78 (15) = happyShift action_6
action_78 (16) = happyShift action_7
action_78 (17) = happyShift action_8
action_78 (18) = happyShift action_9
action_78 (19) = happyShift action_10
action_78 (20) = happyShift action_11
action_78 (21) = happyShift action_12
action_78 (22) = happyShift action_13
action_78 (23) = happyShift action_14
action_78 (24) = happyShift action_15
action_78 (29) = happyShift action_17
action_78 (31) = happyShift action_18
action_78 (33) = happyShift action_37
action_78 (34) = happyShift action_19
action_78 (35) = happyShift action_20
action_78 (4) = happyGoto action_36
action_78 _ = happyReduce_16

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

happyReduce_19 = happyReduce 5 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmBigCell happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCell happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmComma happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TyAxis
	)

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn5
		 (TyTile
	)

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (TyBlank
	)

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (TyCell happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyComma happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 36 36 notHappyAtAll (HappyState action) sts stk []

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
	TokenInt _ happy_dollar_dollar -> cont 34;
	TokenVar _ happy_dollar_dollar -> cont 35;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 36 tk tks = happyError' (tks, explist)
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

data TileType = TyInt | TyAxis | TyTile | TyBlank | TyCell TileType | TyBigCell | TyFun TileType TileType | TyComma TileType TileType
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr | TmCell Expr | TmBigCell Expr | TmComma Expr Expr
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

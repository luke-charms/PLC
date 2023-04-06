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
happyExpList = Happy_Data_Array.listArray (0,833) ([63488,32767,404,32,0,0,0,0,65024,8191,117,0,0,57344,65535,1617,65408,18431,25,65534,25887,63488,32767,404,65504,20991,32774,65535,6471,65024,8191,101,65528,38015,57345,65535,1617,0,16384,0,0,256,0,0,4,65504,20991,32774,65535,6471,0,0,1,65528,38015,1,0,16,0,16384,0,65534,25887,63488,32767,404,0,0,0,0,0,65024,8191,125,65528,56447,1,0,1024,0,0,16,6,29960,63488,32767,404,65504,20991,32775,65535,7495,65024,8191,101,65528,38015,57345,65535,1617,65408,18431,29,65534,29983,38912,14819,468,65504,20991,32775,65535,7495,65024,8191,117,65528,54399,24577,65534,1872,65408,18431,29,0,0,63488,32767,404,96,20608,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63488,32767,404,65504,29183,32775,65535,7623,65024,8191,119,0,0,0,0,0,65408,18431,29,0,32,0,32768,0,0,0,0,0,0,248,0,57344,3,0,57344,65535,1617,0,16384,0,0,256,0,0,4,65504,29183,32775,65535,6471,65024,8191,101,65528,38015,57345,65535,1617,384,49664,25,1,4608,0,0,0,0,0,0,0,0,0,0,57344,3,0,4096,0,288,62,0,0,0,64,992,0,0,0,0,32769,65535,6471,65024,8191,101,65528,56447,57345,65535,1905,65408,51199,29,6,26376,63488,32767,404,0,4096,0,0,0,0,0,0,65528,54399,1,32768,0,0,0,0,65534,25887,0,0,64,65504,23039,7,0,0,65024,8191,101,0,32,57344,65535,1905,65408,18431,25,65534,29967,0,0,4,65504,20991,32774,65535,7623,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Axis","Int","Tile","Blank","Cell","arr","x","y","tile","blank","reflect","rotate","scale","AND","NOT","OR","subtile","combine","combineH","combineV","repeatH","repeatV","replace","length","lam","let","':'","'='","in","'('","')'","'['","']'","','","int","var","%eof"]
        bit_start = st Prelude.* 42
        bit_end = (st Prelude.+ 1) Prelude.* 42
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..41]
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
action_0 (26) = happyShift action_17
action_0 (27) = happyShift action_18
action_0 (28) = happyShift action_19
action_0 (29) = happyShift action_20
action_0 (30) = happyShift action_21
action_0 (31) = happyShift action_22
action_0 (35) = happyShift action_23
action_0 (37) = happyShift action_24
action_0 (40) = happyShift action_25
action_0 (41) = happyShift action_26
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
action_3 (26) = happyShift action_17
action_3 (27) = happyShift action_18
action_3 (28) = happyShift action_19
action_3 (29) = happyShift action_20
action_3 (30) = happyShift action_21
action_3 (31) = happyShift action_22
action_3 (35) = happyShift action_23
action_3 (37) = happyShift action_24
action_3 (39) = happyShift action_48
action_3 (40) = happyShift action_25
action_3 (41) = happyShift action_26
action_3 (42) = happyAccept
action_3 (4) = happyGoto action_47
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
action_5 (26) = happyShift action_17
action_5 (27) = happyShift action_18
action_5 (28) = happyShift action_19
action_5 (29) = happyShift action_20
action_5 (30) = happyShift action_21
action_5 (31) = happyShift action_22
action_5 (35) = happyShift action_23
action_5 (37) = happyShift action_24
action_5 (40) = happyShift action_25
action_5 (41) = happyShift action_26
action_5 (4) = happyGoto action_46
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
action_6 (26) = happyShift action_17
action_6 (27) = happyShift action_18
action_6 (28) = happyShift action_19
action_6 (29) = happyShift action_20
action_6 (30) = happyShift action_21
action_6 (31) = happyShift action_22
action_6 (35) = happyShift action_23
action_6 (37) = happyShift action_24
action_6 (40) = happyShift action_25
action_6 (41) = happyShift action_26
action_6 (4) = happyGoto action_45
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
action_7 (26) = happyShift action_17
action_7 (27) = happyShift action_18
action_7 (28) = happyShift action_19
action_7 (29) = happyShift action_20
action_7 (30) = happyShift action_21
action_7 (31) = happyShift action_22
action_7 (35) = happyShift action_23
action_7 (37) = happyShift action_24
action_7 (40) = happyShift action_25
action_7 (41) = happyShift action_26
action_7 (4) = happyGoto action_44
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
action_8 (26) = happyShift action_17
action_8 (27) = happyShift action_18
action_8 (28) = happyShift action_19
action_8 (29) = happyShift action_20
action_8 (30) = happyShift action_21
action_8 (31) = happyShift action_22
action_8 (35) = happyShift action_23
action_8 (37) = happyShift action_24
action_8 (40) = happyShift action_25
action_8 (41) = happyShift action_26
action_8 (4) = happyGoto action_43
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
action_9 (26) = happyShift action_17
action_9 (27) = happyShift action_18
action_9 (28) = happyShift action_19
action_9 (29) = happyShift action_20
action_9 (30) = happyShift action_21
action_9 (31) = happyShift action_22
action_9 (35) = happyShift action_23
action_9 (37) = happyShift action_24
action_9 (40) = happyShift action_25
action_9 (41) = happyShift action_26
action_9 (4) = happyGoto action_42
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
action_10 (26) = happyShift action_17
action_10 (27) = happyShift action_18
action_10 (28) = happyShift action_19
action_10 (29) = happyShift action_20
action_10 (30) = happyShift action_21
action_10 (31) = happyShift action_22
action_10 (35) = happyShift action_23
action_10 (37) = happyShift action_24
action_10 (40) = happyShift action_25
action_10 (41) = happyShift action_26
action_10 (4) = happyGoto action_41
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
action_11 (26) = happyShift action_17
action_11 (27) = happyShift action_18
action_11 (28) = happyShift action_19
action_11 (29) = happyShift action_20
action_11 (30) = happyShift action_21
action_11 (31) = happyShift action_22
action_11 (35) = happyShift action_23
action_11 (37) = happyShift action_24
action_11 (40) = happyShift action_25
action_11 (41) = happyShift action_26
action_11 (4) = happyGoto action_40
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
action_12 (26) = happyShift action_17
action_12 (27) = happyShift action_18
action_12 (28) = happyShift action_19
action_12 (29) = happyShift action_20
action_12 (30) = happyShift action_21
action_12 (31) = happyShift action_22
action_12 (35) = happyShift action_23
action_12 (37) = happyShift action_24
action_12 (40) = happyShift action_25
action_12 (41) = happyShift action_26
action_12 (4) = happyGoto action_39
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_2
action_13 (13) = happyShift action_4
action_13 (14) = happyShift action_5
action_13 (15) = happyShift action_6
action_13 (16) = happyShift action_7
action_13 (17) = happyShift action_8
action_13 (18) = happyShift action_9
action_13 (19) = happyShift action_10
action_13 (20) = happyShift action_11
action_13 (21) = happyShift action_12
action_13 (22) = happyShift action_13
action_13 (23) = happyShift action_14
action_13 (24) = happyShift action_15
action_13 (25) = happyShift action_16
action_13 (26) = happyShift action_17
action_13 (27) = happyShift action_18
action_13 (28) = happyShift action_19
action_13 (29) = happyShift action_20
action_13 (30) = happyShift action_21
action_13 (31) = happyShift action_22
action_13 (35) = happyShift action_23
action_13 (37) = happyShift action_24
action_13 (40) = happyShift action_25
action_13 (41) = happyShift action_26
action_13 (4) = happyGoto action_38
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (35) = happyShift action_37
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (35) = happyShift action_36
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (35) = happyShift action_35
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
action_17 (26) = happyShift action_17
action_17 (27) = happyShift action_18
action_17 (28) = happyShift action_19
action_17 (29) = happyShift action_20
action_17 (30) = happyShift action_21
action_17 (31) = happyShift action_22
action_17 (35) = happyShift action_23
action_17 (37) = happyShift action_24
action_17 (40) = happyShift action_25
action_17 (41) = happyShift action_26
action_17 (4) = happyGoto action_34
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
action_18 (26) = happyShift action_17
action_18 (27) = happyShift action_18
action_18 (28) = happyShift action_19
action_18 (29) = happyShift action_20
action_18 (30) = happyShift action_21
action_18 (31) = happyShift action_22
action_18 (35) = happyShift action_23
action_18 (37) = happyShift action_24
action_18 (40) = happyShift action_25
action_18 (41) = happyShift action_26
action_18 (4) = happyGoto action_33
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (35) = happyShift action_32
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (12) = happyShift action_2
action_20 (13) = happyShift action_4
action_20 (14) = happyShift action_5
action_20 (15) = happyShift action_6
action_20 (16) = happyShift action_7
action_20 (17) = happyShift action_8
action_20 (18) = happyShift action_9
action_20 (19) = happyShift action_10
action_20 (20) = happyShift action_11
action_20 (21) = happyShift action_12
action_20 (22) = happyShift action_13
action_20 (23) = happyShift action_14
action_20 (24) = happyShift action_15
action_20 (25) = happyShift action_16
action_20 (26) = happyShift action_17
action_20 (27) = happyShift action_18
action_20 (28) = happyShift action_19
action_20 (29) = happyShift action_20
action_20 (30) = happyShift action_21
action_20 (31) = happyShift action_22
action_20 (35) = happyShift action_23
action_20 (37) = happyShift action_24
action_20 (40) = happyShift action_25
action_20 (41) = happyShift action_26
action_20 (4) = happyGoto action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (35) = happyShift action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (35) = happyShift action_29
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
action_23 (26) = happyShift action_17
action_23 (27) = happyShift action_18
action_23 (28) = happyShift action_19
action_23 (29) = happyShift action_20
action_23 (30) = happyShift action_21
action_23 (31) = happyShift action_22
action_23 (35) = happyShift action_23
action_23 (37) = happyShift action_24
action_23 (40) = happyShift action_25
action_23 (41) = happyShift action_26
action_23 (4) = happyGoto action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_2
action_24 (13) = happyShift action_4
action_24 (14) = happyShift action_5
action_24 (15) = happyShift action_6
action_24 (16) = happyShift action_7
action_24 (17) = happyShift action_8
action_24 (18) = happyShift action_9
action_24 (19) = happyShift action_10
action_24 (20) = happyShift action_11
action_24 (21) = happyShift action_12
action_24 (22) = happyShift action_13
action_24 (23) = happyShift action_14
action_24 (24) = happyShift action_15
action_24 (25) = happyShift action_16
action_24 (26) = happyShift action_17
action_24 (27) = happyShift action_18
action_24 (28) = happyShift action_19
action_24 (29) = happyShift action_20
action_24 (30) = happyShift action_21
action_24 (31) = happyShift action_22
action_24 (35) = happyShift action_23
action_24 (37) = happyShift action_24
action_24 (40) = happyShift action_25
action_24 (41) = happyShift action_26
action_24 (4) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_3

action_26 _ = happyReduce_4

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
action_27 (26) = happyShift action_17
action_27 (27) = happyShift action_18
action_27 (28) = happyShift action_19
action_27 (29) = happyShift action_20
action_27 (30) = happyShift action_21
action_27 (31) = happyShift action_22
action_27 (35) = happyShift action_23
action_27 (37) = happyShift action_24
action_27 (38) = happyShift action_66
action_27 (39) = happyShift action_48
action_27 (40) = happyShift action_25
action_27 (41) = happyShift action_26
action_27 (4) = happyGoto action_47
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
action_28 (26) = happyShift action_17
action_28 (27) = happyShift action_18
action_28 (28) = happyShift action_19
action_28 (29) = happyShift action_20
action_28 (30) = happyShift action_21
action_28 (31) = happyShift action_22
action_28 (35) = happyShift action_23
action_28 (36) = happyShift action_65
action_28 (37) = happyShift action_24
action_28 (39) = happyShift action_48
action_28 (40) = happyShift action_25
action_28 (41) = happyShift action_26
action_28 (4) = happyGoto action_47
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (41) = happyShift action_64
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (41) = happyShift action_63
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_2
action_31 (13) = happyShift action_4
action_31 (30) = happyShift action_21
action_31 (35) = happyShift action_23
action_31 (37) = happyShift action_24
action_31 (39) = happyShift action_48
action_31 (40) = happyShift action_25
action_31 (41) = happyShift action_26
action_31 (4) = happyGoto action_47
action_31 _ = happyReduce_20

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
action_32 (26) = happyShift action_17
action_32 (27) = happyShift action_18
action_32 (28) = happyShift action_19
action_32 (29) = happyShift action_20
action_32 (30) = happyShift action_21
action_32 (31) = happyShift action_22
action_32 (35) = happyShift action_23
action_32 (37) = happyShift action_24
action_32 (40) = happyShift action_25
action_32 (41) = happyShift action_26
action_32 (4) = happyGoto action_62
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
action_33 (26) = happyShift action_17
action_33 (27) = happyShift action_18
action_33 (28) = happyShift action_19
action_33 (29) = happyShift action_20
action_33 (30) = happyShift action_21
action_33 (31) = happyShift action_22
action_33 (35) = happyShift action_23
action_33 (37) = happyShift action_24
action_33 (39) = happyShift action_48
action_33 (40) = happyShift action_25
action_33 (41) = happyShift action_26
action_33 (4) = happyGoto action_61
action_33 _ = happyFail (happyExpListPerState 33)

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
action_34 (26) = happyShift action_17
action_34 (27) = happyShift action_18
action_34 (28) = happyShift action_19
action_34 (29) = happyShift action_20
action_34 (30) = happyShift action_21
action_34 (31) = happyShift action_22
action_34 (35) = happyShift action_23
action_34 (37) = happyShift action_24
action_34 (39) = happyShift action_48
action_34 (40) = happyShift action_25
action_34 (41) = happyShift action_26
action_34 (4) = happyGoto action_60
action_34 _ = happyFail (happyExpListPerState 34)

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
action_35 (26) = happyShift action_17
action_35 (27) = happyShift action_18
action_35 (28) = happyShift action_19
action_35 (29) = happyShift action_20
action_35 (30) = happyShift action_21
action_35 (31) = happyShift action_22
action_35 (35) = happyShift action_23
action_35 (37) = happyShift action_24
action_35 (40) = happyShift action_25
action_35 (41) = happyShift action_26
action_35 (4) = happyGoto action_59
action_35 _ = happyFail (happyExpListPerState 35)

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
action_36 (26) = happyShift action_17
action_36 (27) = happyShift action_18
action_36 (28) = happyShift action_19
action_36 (29) = happyShift action_20
action_36 (30) = happyShift action_21
action_36 (31) = happyShift action_22
action_36 (35) = happyShift action_23
action_36 (37) = happyShift action_24
action_36 (40) = happyShift action_25
action_36 (41) = happyShift action_26
action_36 (4) = happyGoto action_58
action_36 _ = happyFail (happyExpListPerState 36)

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
action_37 (26) = happyShift action_17
action_37 (27) = happyShift action_18
action_37 (28) = happyShift action_19
action_37 (29) = happyShift action_20
action_37 (30) = happyShift action_21
action_37 (31) = happyShift action_22
action_37 (35) = happyShift action_23
action_37 (37) = happyShift action_24
action_37 (40) = happyShift action_25
action_37 (41) = happyShift action_26
action_37 (4) = happyGoto action_57
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (12) = happyShift action_2
action_38 (13) = happyShift action_4
action_38 (14) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (16) = happyShift action_7
action_38 (17) = happyShift action_8
action_38 (18) = happyShift action_9
action_38 (19) = happyShift action_10
action_38 (20) = happyShift action_11
action_38 (21) = happyShift action_12
action_38 (22) = happyShift action_13
action_38 (23) = happyShift action_14
action_38 (24) = happyShift action_15
action_38 (25) = happyShift action_16
action_38 (26) = happyShift action_17
action_38 (27) = happyShift action_18
action_38 (28) = happyShift action_19
action_38 (29) = happyShift action_20
action_38 (30) = happyShift action_21
action_38 (31) = happyShift action_22
action_38 (35) = happyShift action_56
action_38 (37) = happyShift action_24
action_38 (39) = happyShift action_48
action_38 (40) = happyShift action_25
action_38 (41) = happyShift action_26
action_38 (4) = happyGoto action_47
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (12) = happyShift action_2
action_39 (13) = happyShift action_4
action_39 (14) = happyShift action_5
action_39 (15) = happyShift action_6
action_39 (16) = happyShift action_7
action_39 (17) = happyShift action_8
action_39 (18) = happyShift action_9
action_39 (19) = happyShift action_10
action_39 (20) = happyShift action_11
action_39 (21) = happyShift action_12
action_39 (22) = happyShift action_13
action_39 (23) = happyShift action_14
action_39 (24) = happyShift action_15
action_39 (25) = happyShift action_16
action_39 (26) = happyShift action_17
action_39 (27) = happyShift action_18
action_39 (28) = happyShift action_19
action_39 (29) = happyShift action_20
action_39 (30) = happyShift action_21
action_39 (31) = happyShift action_22
action_39 (35) = happyShift action_23
action_39 (37) = happyShift action_24
action_39 (39) = happyShift action_48
action_39 (40) = happyShift action_25
action_39 (41) = happyShift action_26
action_39 (4) = happyGoto action_55
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (12) = happyShift action_2
action_40 (13) = happyShift action_4
action_40 (16) = happyShift action_7
action_40 (17) = happyShift action_8
action_40 (18) = happyShift action_9
action_40 (22) = happyShift action_13
action_40 (23) = happyShift action_14
action_40 (24) = happyShift action_15
action_40 (25) = happyShift action_16
action_40 (28) = happyShift action_19
action_40 (29) = happyShift action_20
action_40 (30) = happyShift action_21
action_40 (35) = happyShift action_23
action_40 (37) = happyShift action_24
action_40 (39) = happyShift action_48
action_40 (40) = happyShift action_25
action_40 (41) = happyShift action_26
action_40 (4) = happyGoto action_47
action_40 _ = happyReduce_11

action_41 (12) = happyShift action_2
action_41 (13) = happyShift action_4
action_41 (14) = happyShift action_5
action_41 (15) = happyShift action_6
action_41 (16) = happyShift action_7
action_41 (17) = happyShift action_8
action_41 (18) = happyShift action_9
action_41 (19) = happyShift action_10
action_41 (20) = happyShift action_11
action_41 (21) = happyShift action_12
action_41 (22) = happyShift action_13
action_41 (23) = happyShift action_14
action_41 (24) = happyShift action_15
action_41 (25) = happyShift action_16
action_41 (26) = happyShift action_17
action_41 (27) = happyShift action_18
action_41 (28) = happyShift action_19
action_41 (29) = happyShift action_20
action_41 (30) = happyShift action_21
action_41 (31) = happyShift action_22
action_41 (35) = happyShift action_23
action_41 (37) = happyShift action_24
action_41 (39) = happyShift action_48
action_41 (40) = happyShift action_25
action_41 (41) = happyShift action_26
action_41 (4) = happyGoto action_54
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (12) = happyShift action_2
action_42 (13) = happyShift action_4
action_42 (14) = happyShift action_5
action_42 (15) = happyShift action_6
action_42 (16) = happyShift action_7
action_42 (17) = happyShift action_8
action_42 (18) = happyShift action_9
action_42 (19) = happyShift action_10
action_42 (20) = happyShift action_11
action_42 (21) = happyShift action_12
action_42 (22) = happyShift action_13
action_42 (23) = happyShift action_14
action_42 (24) = happyShift action_15
action_42 (25) = happyShift action_16
action_42 (26) = happyShift action_17
action_42 (27) = happyShift action_18
action_42 (28) = happyShift action_19
action_42 (29) = happyShift action_20
action_42 (30) = happyShift action_21
action_42 (31) = happyShift action_22
action_42 (35) = happyShift action_23
action_42 (37) = happyShift action_24
action_42 (39) = happyShift action_48
action_42 (40) = happyShift action_25
action_42 (41) = happyShift action_26
action_42 (4) = happyGoto action_53
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (12) = happyShift action_2
action_43 (13) = happyShift action_4
action_43 (14) = happyShift action_5
action_43 (15) = happyShift action_6
action_43 (16) = happyShift action_7
action_43 (17) = happyShift action_8
action_43 (18) = happyShift action_9
action_43 (19) = happyShift action_10
action_43 (20) = happyShift action_11
action_43 (21) = happyShift action_12
action_43 (22) = happyShift action_13
action_43 (23) = happyShift action_14
action_43 (24) = happyShift action_15
action_43 (25) = happyShift action_16
action_43 (26) = happyShift action_17
action_43 (27) = happyShift action_18
action_43 (28) = happyShift action_19
action_43 (29) = happyShift action_20
action_43 (30) = happyShift action_21
action_43 (31) = happyShift action_22
action_43 (35) = happyShift action_23
action_43 (37) = happyShift action_24
action_43 (39) = happyShift action_48
action_43 (40) = happyShift action_25
action_43 (41) = happyShift action_26
action_43 (4) = happyGoto action_52
action_43 _ = happyFail (happyExpListPerState 43)

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
action_44 (26) = happyShift action_17
action_44 (27) = happyShift action_18
action_44 (28) = happyShift action_19
action_44 (29) = happyShift action_20
action_44 (30) = happyShift action_21
action_44 (31) = happyShift action_22
action_44 (35) = happyShift action_23
action_44 (37) = happyShift action_24
action_44 (39) = happyShift action_48
action_44 (40) = happyShift action_25
action_44 (41) = happyShift action_26
action_44 (4) = happyGoto action_51
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (12) = happyShift action_2
action_45 (13) = happyShift action_4
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
action_45 (26) = happyShift action_17
action_45 (27) = happyShift action_18
action_45 (28) = happyShift action_19
action_45 (29) = happyShift action_20
action_45 (30) = happyShift action_21
action_45 (35) = happyShift action_23
action_45 (37) = happyShift action_24
action_45 (39) = happyShift action_48
action_45 (40) = happyShift action_25
action_45 (41) = happyShift action_26
action_45 (4) = happyGoto action_47
action_45 _ = happyReduce_6

action_46 (12) = happyShift action_2
action_46 (13) = happyShift action_4
action_46 (14) = happyShift action_5
action_46 (15) = happyShift action_6
action_46 (16) = happyShift action_7
action_46 (17) = happyShift action_8
action_46 (18) = happyShift action_9
action_46 (19) = happyShift action_10
action_46 (20) = happyShift action_11
action_46 (21) = happyShift action_12
action_46 (22) = happyShift action_13
action_46 (23) = happyShift action_14
action_46 (24) = happyShift action_15
action_46 (25) = happyShift action_16
action_46 (26) = happyShift action_17
action_46 (27) = happyShift action_18
action_46 (28) = happyShift action_19
action_46 (29) = happyShift action_20
action_46 (30) = happyShift action_21
action_46 (31) = happyShift action_22
action_46 (35) = happyShift action_23
action_46 (37) = happyShift action_24
action_46 (39) = happyShift action_48
action_46 (40) = happyShift action_25
action_46 (41) = happyShift action_26
action_46 (4) = happyGoto action_50
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (4) = happyGoto action_47
action_47 _ = happyReduce_23

action_48 (12) = happyShift action_2
action_48 (13) = happyShift action_4
action_48 (14) = happyShift action_5
action_48 (15) = happyShift action_6
action_48 (16) = happyShift action_7
action_48 (17) = happyShift action_8
action_48 (18) = happyShift action_9
action_48 (19) = happyShift action_10
action_48 (20) = happyShift action_11
action_48 (21) = happyShift action_12
action_48 (22) = happyShift action_13
action_48 (23) = happyShift action_14
action_48 (24) = happyShift action_15
action_48 (25) = happyShift action_16
action_48 (26) = happyShift action_17
action_48 (27) = happyShift action_18
action_48 (28) = happyShift action_19
action_48 (29) = happyShift action_20
action_48 (30) = happyShift action_21
action_48 (31) = happyShift action_22
action_48 (35) = happyShift action_23
action_48 (37) = happyShift action_24
action_48 (40) = happyShift action_25
action_48 (41) = happyShift action_26
action_48 (4) = happyGoto action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (12) = happyShift action_2
action_49 (13) = happyShift action_4
action_49 (30) = happyShift action_21
action_49 (35) = happyShift action_23
action_49 (37) = happyShift action_24
action_49 (40) = happyShift action_25
action_49 (41) = happyShift action_26
action_49 (4) = happyGoto action_47
action_49 _ = happyReduce_26

action_50 (34) = happyReduce_5
action_50 (36) = happyReduce_5
action_50 (38) = happyReduce_5
action_50 (42) = happyReduce_5
action_50 (4) = happyGoto action_47
action_50 _ = happyReduce_23

action_51 (34) = happyReduce_7
action_51 (36) = happyReduce_7
action_51 (38) = happyReduce_7
action_51 (42) = happyReduce_7
action_51 (4) = happyGoto action_47
action_51 _ = happyReduce_23

action_52 (34) = happyReduce_8
action_52 (36) = happyReduce_8
action_52 (38) = happyReduce_8
action_52 (42) = happyReduce_8
action_52 (4) = happyGoto action_47
action_52 _ = happyReduce_23

action_53 (34) = happyReduce_9
action_53 (36) = happyReduce_9
action_53 (38) = happyReduce_9
action_53 (42) = happyReduce_9
action_53 (4) = happyGoto action_47
action_53 _ = happyReduce_23

action_54 (34) = happyReduce_10
action_54 (36) = happyReduce_10
action_54 (38) = happyReduce_10
action_54 (42) = happyReduce_10
action_54 (4) = happyGoto action_47
action_54 _ = happyReduce_23

action_55 (34) = happyReduce_12
action_55 (36) = happyReduce_12
action_55 (38) = happyReduce_12
action_55 (42) = happyReduce_12
action_55 (4) = happyGoto action_47
action_55 _ = happyReduce_23

action_56 (12) = happyShift action_2
action_56 (13) = happyShift action_4
action_56 (14) = happyShift action_5
action_56 (15) = happyShift action_6
action_56 (16) = happyShift action_7
action_56 (17) = happyShift action_8
action_56 (18) = happyShift action_9
action_56 (19) = happyShift action_10
action_56 (20) = happyShift action_11
action_56 (21) = happyShift action_12
action_56 (22) = happyShift action_13
action_56 (23) = happyShift action_14
action_56 (24) = happyShift action_15
action_56 (25) = happyShift action_16
action_56 (26) = happyShift action_17
action_56 (27) = happyShift action_18
action_56 (28) = happyShift action_19
action_56 (29) = happyShift action_20
action_56 (30) = happyShift action_21
action_56 (31) = happyShift action_22
action_56 (35) = happyShift action_23
action_56 (37) = happyShift action_24
action_56 (40) = happyShift action_25
action_56 (41) = happyShift action_26
action_56 (4) = happyGoto action_73
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (12) = happyShift action_2
action_57 (13) = happyShift action_4
action_57 (14) = happyShift action_5
action_57 (15) = happyShift action_6
action_57 (16) = happyShift action_7
action_57 (17) = happyShift action_8
action_57 (18) = happyShift action_9
action_57 (19) = happyShift action_10
action_57 (20) = happyShift action_11
action_57 (21) = happyShift action_12
action_57 (22) = happyShift action_13
action_57 (23) = happyShift action_14
action_57 (24) = happyShift action_15
action_57 (25) = happyShift action_16
action_57 (26) = happyShift action_17
action_57 (27) = happyShift action_18
action_57 (28) = happyShift action_19
action_57 (29) = happyShift action_20
action_57 (30) = happyShift action_21
action_57 (31) = happyShift action_22
action_57 (35) = happyShift action_23
action_57 (36) = happyShift action_72
action_57 (37) = happyShift action_24
action_57 (39) = happyShift action_48
action_57 (40) = happyShift action_25
action_57 (41) = happyShift action_26
action_57 (4) = happyGoto action_47
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_2
action_58 (13) = happyShift action_4
action_58 (14) = happyShift action_5
action_58 (15) = happyShift action_6
action_58 (16) = happyShift action_7
action_58 (17) = happyShift action_8
action_58 (18) = happyShift action_9
action_58 (19) = happyShift action_10
action_58 (20) = happyShift action_11
action_58 (21) = happyShift action_12
action_58 (22) = happyShift action_13
action_58 (23) = happyShift action_14
action_58 (24) = happyShift action_15
action_58 (25) = happyShift action_16
action_58 (26) = happyShift action_17
action_58 (27) = happyShift action_18
action_58 (28) = happyShift action_19
action_58 (29) = happyShift action_20
action_58 (30) = happyShift action_21
action_58 (31) = happyShift action_22
action_58 (35) = happyShift action_23
action_58 (36) = happyShift action_71
action_58 (37) = happyShift action_24
action_58 (39) = happyShift action_48
action_58 (40) = happyShift action_25
action_58 (41) = happyShift action_26
action_58 (4) = happyGoto action_47
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_2
action_59 (13) = happyShift action_4
action_59 (14) = happyShift action_5
action_59 (15) = happyShift action_6
action_59 (16) = happyShift action_7
action_59 (17) = happyShift action_8
action_59 (18) = happyShift action_9
action_59 (19) = happyShift action_10
action_59 (20) = happyShift action_11
action_59 (21) = happyShift action_12
action_59 (22) = happyShift action_13
action_59 (23) = happyShift action_14
action_59 (24) = happyShift action_15
action_59 (25) = happyShift action_16
action_59 (26) = happyShift action_17
action_59 (27) = happyShift action_18
action_59 (28) = happyShift action_19
action_59 (29) = happyShift action_20
action_59 (30) = happyShift action_21
action_59 (31) = happyShift action_22
action_59 (35) = happyShift action_23
action_59 (36) = happyShift action_70
action_59 (37) = happyShift action_24
action_59 (39) = happyShift action_48
action_59 (40) = happyShift action_25
action_59 (41) = happyShift action_26
action_59 (4) = happyGoto action_47
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (34) = happyReduce_17
action_60 (36) = happyReduce_17
action_60 (38) = happyReduce_17
action_60 (42) = happyReduce_17
action_60 (4) = happyGoto action_47
action_60 _ = happyReduce_23

action_61 (34) = happyReduce_18
action_61 (36) = happyReduce_18
action_61 (38) = happyReduce_18
action_61 (42) = happyReduce_18
action_61 (4) = happyGoto action_47
action_61 _ = happyReduce_23

action_62 (12) = happyShift action_2
action_62 (13) = happyShift action_4
action_62 (14) = happyShift action_5
action_62 (15) = happyShift action_6
action_62 (16) = happyShift action_7
action_62 (17) = happyShift action_8
action_62 (18) = happyShift action_9
action_62 (19) = happyShift action_10
action_62 (20) = happyShift action_11
action_62 (21) = happyShift action_12
action_62 (22) = happyShift action_13
action_62 (23) = happyShift action_14
action_62 (24) = happyShift action_15
action_62 (25) = happyShift action_16
action_62 (26) = happyShift action_17
action_62 (27) = happyShift action_18
action_62 (28) = happyShift action_19
action_62 (29) = happyShift action_20
action_62 (30) = happyShift action_21
action_62 (31) = happyShift action_22
action_62 (35) = happyShift action_23
action_62 (37) = happyShift action_24
action_62 (39) = happyShift action_69
action_62 (40) = happyShift action_25
action_62 (41) = happyShift action_26
action_62 (4) = happyGoto action_47
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (32) = happyShift action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (32) = happyShift action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_24

action_66 _ = happyReduce_25

action_67 (6) = happyShift action_80
action_67 (7) = happyShift action_81
action_67 (8) = happyShift action_82
action_67 (9) = happyShift action_83
action_67 (10) = happyShift action_84
action_67 (5) = happyGoto action_85
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (6) = happyShift action_80
action_68 (7) = happyShift action_81
action_68 (8) = happyShift action_82
action_68 (9) = happyShift action_83
action_68 (10) = happyShift action_84
action_68 (5) = happyGoto action_79
action_68 _ = happyFail (happyExpListPerState 68)

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
action_69 (26) = happyShift action_17
action_69 (27) = happyShift action_18
action_69 (28) = happyShift action_19
action_69 (29) = happyShift action_20
action_69 (30) = happyShift action_21
action_69 (31) = happyShift action_22
action_69 (35) = happyShift action_23
action_69 (37) = happyShift action_24
action_69 (40) = happyShift action_25
action_69 (41) = happyShift action_26
action_69 (4) = happyGoto action_78
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (35) = happyShift action_77
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (35) = happyShift action_76
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (35) = happyShift action_75
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (12) = happyShift action_2
action_73 (13) = happyShift action_4
action_73 (14) = happyShift action_5
action_73 (15) = happyShift action_6
action_73 (16) = happyShift action_7
action_73 (17) = happyShift action_8
action_73 (18) = happyShift action_9
action_73 (19) = happyShift action_10
action_73 (20) = happyShift action_11
action_73 (21) = happyShift action_12
action_73 (22) = happyShift action_13
action_73 (23) = happyShift action_14
action_73 (24) = happyShift action_15
action_73 (25) = happyShift action_16
action_73 (26) = happyShift action_17
action_73 (27) = happyShift action_18
action_73 (28) = happyShift action_19
action_73 (29) = happyShift action_20
action_73 (30) = happyShift action_21
action_73 (31) = happyShift action_22
action_73 (35) = happyShift action_23
action_73 (36) = happyShift action_65
action_73 (37) = happyShift action_24
action_73 (39) = happyShift action_74
action_73 (40) = happyShift action_25
action_73 (41) = happyShift action_26
action_73 (4) = happyGoto action_47
action_73 _ = happyFail (happyExpListPerState 73)

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
action_74 (26) = happyShift action_17
action_74 (27) = happyShift action_18
action_74 (28) = happyShift action_19
action_74 (29) = happyShift action_20
action_74 (30) = happyShift action_21
action_74 (31) = happyShift action_22
action_74 (35) = happyShift action_23
action_74 (37) = happyShift action_24
action_74 (40) = happyShift action_25
action_74 (41) = happyShift action_26
action_74 (4) = happyGoto action_95
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (12) = happyShift action_2
action_75 (13) = happyShift action_4
action_75 (14) = happyShift action_5
action_75 (15) = happyShift action_6
action_75 (16) = happyShift action_7
action_75 (17) = happyShift action_8
action_75 (18) = happyShift action_9
action_75 (19) = happyShift action_10
action_75 (20) = happyShift action_11
action_75 (21) = happyShift action_12
action_75 (22) = happyShift action_13
action_75 (23) = happyShift action_14
action_75 (24) = happyShift action_15
action_75 (25) = happyShift action_16
action_75 (26) = happyShift action_17
action_75 (27) = happyShift action_18
action_75 (28) = happyShift action_19
action_75 (29) = happyShift action_20
action_75 (30) = happyShift action_21
action_75 (31) = happyShift action_22
action_75 (35) = happyShift action_23
action_75 (37) = happyShift action_24
action_75 (40) = happyShift action_25
action_75 (41) = happyShift action_26
action_75 (4) = happyGoto action_94
action_75 _ = happyFail (happyExpListPerState 75)

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
action_76 (26) = happyShift action_17
action_76 (27) = happyShift action_18
action_76 (28) = happyShift action_19
action_76 (29) = happyShift action_20
action_76 (30) = happyShift action_21
action_76 (31) = happyShift action_22
action_76 (35) = happyShift action_23
action_76 (37) = happyShift action_24
action_76 (40) = happyShift action_25
action_76 (41) = happyShift action_26
action_76 (4) = happyGoto action_93
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
action_77 (26) = happyShift action_17
action_77 (27) = happyShift action_18
action_77 (28) = happyShift action_19
action_77 (29) = happyShift action_20
action_77 (30) = happyShift action_21
action_77 (31) = happyShift action_22
action_77 (35) = happyShift action_23
action_77 (37) = happyShift action_24
action_77 (40) = happyShift action_25
action_77 (41) = happyShift action_26
action_77 (4) = happyGoto action_92
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (12) = happyShift action_2
action_78 (13) = happyShift action_4
action_78 (30) = happyShift action_21
action_78 (35) = happyShift action_23
action_78 (36) = happyShift action_91
action_78 (37) = happyShift action_24
action_78 (40) = happyShift action_25
action_78 (41) = happyShift action_26
action_78 (4) = happyGoto action_47
action_78 _ = happyReduce_26

action_79 (11) = happyShift action_86
action_79 (36) = happyShift action_90
action_79 (39) = happyShift action_88
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_27

action_81 _ = happyReduce_28

action_82 _ = happyReduce_29

action_83 _ = happyReduce_30

action_84 (6) = happyShift action_80
action_84 (7) = happyShift action_81
action_84 (8) = happyShift action_82
action_84 (9) = happyShift action_83
action_84 (10) = happyShift action_84
action_84 (5) = happyGoto action_89
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (11) = happyShift action_86
action_85 (36) = happyShift action_87
action_85 (39) = happyShift action_88
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (6) = happyShift action_80
action_86 (7) = happyShift action_81
action_86 (8) = happyShift action_82
action_86 (9) = happyShift action_83
action_86 (10) = happyShift action_84
action_86 (5) = happyGoto action_104
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (33) = happyShift action_103
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (6) = happyShift action_80
action_88 (7) = happyShift action_81
action_88 (8) = happyShift action_82
action_88 (9) = happyShift action_83
action_88 (10) = happyShift action_84
action_88 (5) = happyGoto action_102
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (39) = happyShift action_88
action_89 _ = happyReduce_32

action_90 (12) = happyShift action_2
action_90 (13) = happyShift action_4
action_90 (14) = happyShift action_5
action_90 (15) = happyShift action_6
action_90 (16) = happyShift action_7
action_90 (17) = happyShift action_8
action_90 (18) = happyShift action_9
action_90 (19) = happyShift action_10
action_90 (20) = happyShift action_11
action_90 (21) = happyShift action_12
action_90 (22) = happyShift action_13
action_90 (23) = happyShift action_14
action_90 (24) = happyShift action_15
action_90 (25) = happyShift action_16
action_90 (26) = happyShift action_17
action_90 (27) = happyShift action_18
action_90 (28) = happyShift action_19
action_90 (29) = happyShift action_20
action_90 (30) = happyShift action_21
action_90 (31) = happyShift action_22
action_90 (35) = happyShift action_23
action_90 (37) = happyShift action_24
action_90 (40) = happyShift action_25
action_90 (41) = happyShift action_26
action_90 (4) = happyGoto action_101
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (12) = happyShift action_2
action_91 (13) = happyShift action_4
action_91 (14) = happyShift action_5
action_91 (15) = happyShift action_6
action_91 (16) = happyShift action_7
action_91 (17) = happyShift action_8
action_91 (18) = happyShift action_9
action_91 (19) = happyShift action_10
action_91 (20) = happyShift action_11
action_91 (21) = happyShift action_12
action_91 (22) = happyShift action_13
action_91 (23) = happyShift action_14
action_91 (24) = happyShift action_15
action_91 (25) = happyShift action_16
action_91 (26) = happyShift action_17
action_91 (27) = happyShift action_18
action_91 (28) = happyShift action_19
action_91 (29) = happyShift action_20
action_91 (30) = happyShift action_21
action_91 (31) = happyShift action_22
action_91 (35) = happyShift action_23
action_91 (37) = happyShift action_24
action_91 (40) = happyShift action_25
action_91 (41) = happyShift action_26
action_91 (4) = happyGoto action_100
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (12) = happyShift action_2
action_92 (13) = happyShift action_4
action_92 (14) = happyShift action_5
action_92 (15) = happyShift action_6
action_92 (16) = happyShift action_7
action_92 (17) = happyShift action_8
action_92 (18) = happyShift action_9
action_92 (19) = happyShift action_10
action_92 (20) = happyShift action_11
action_92 (21) = happyShift action_12
action_92 (22) = happyShift action_13
action_92 (23) = happyShift action_14
action_92 (24) = happyShift action_15
action_92 (25) = happyShift action_16
action_92 (26) = happyShift action_17
action_92 (27) = happyShift action_18
action_92 (28) = happyShift action_19
action_92 (29) = happyShift action_20
action_92 (30) = happyShift action_21
action_92 (31) = happyShift action_22
action_92 (35) = happyShift action_23
action_92 (36) = happyShift action_99
action_92 (37) = happyShift action_24
action_92 (39) = happyShift action_48
action_92 (40) = happyShift action_25
action_92 (41) = happyShift action_26
action_92 (4) = happyGoto action_47
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (12) = happyShift action_2
action_93 (13) = happyShift action_4
action_93 (14) = happyShift action_5
action_93 (15) = happyShift action_6
action_93 (16) = happyShift action_7
action_93 (17) = happyShift action_8
action_93 (18) = happyShift action_9
action_93 (19) = happyShift action_10
action_93 (20) = happyShift action_11
action_93 (21) = happyShift action_12
action_93 (22) = happyShift action_13
action_93 (23) = happyShift action_14
action_93 (24) = happyShift action_15
action_93 (25) = happyShift action_16
action_93 (26) = happyShift action_17
action_93 (27) = happyShift action_18
action_93 (28) = happyShift action_19
action_93 (29) = happyShift action_20
action_93 (30) = happyShift action_21
action_93 (31) = happyShift action_22
action_93 (35) = happyShift action_23
action_93 (36) = happyShift action_98
action_93 (37) = happyShift action_24
action_93 (39) = happyShift action_48
action_93 (40) = happyShift action_25
action_93 (41) = happyShift action_26
action_93 (4) = happyGoto action_47
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (12) = happyShift action_2
action_94 (13) = happyShift action_4
action_94 (14) = happyShift action_5
action_94 (15) = happyShift action_6
action_94 (16) = happyShift action_7
action_94 (17) = happyShift action_8
action_94 (18) = happyShift action_9
action_94 (19) = happyShift action_10
action_94 (20) = happyShift action_11
action_94 (21) = happyShift action_12
action_94 (22) = happyShift action_13
action_94 (23) = happyShift action_14
action_94 (24) = happyShift action_15
action_94 (25) = happyShift action_16
action_94 (26) = happyShift action_17
action_94 (27) = happyShift action_18
action_94 (28) = happyShift action_19
action_94 (29) = happyShift action_20
action_94 (30) = happyShift action_21
action_94 (31) = happyShift action_22
action_94 (35) = happyShift action_23
action_94 (36) = happyShift action_97
action_94 (37) = happyShift action_24
action_94 (39) = happyShift action_48
action_94 (40) = happyShift action_25
action_94 (41) = happyShift action_26
action_94 (4) = happyGoto action_47
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (12) = happyShift action_2
action_95 (13) = happyShift action_4
action_95 (30) = happyShift action_21
action_95 (35) = happyShift action_23
action_95 (36) = happyShift action_96
action_95 (37) = happyShift action_24
action_95 (40) = happyShift action_25
action_95 (41) = happyShift action_26
action_95 (4) = happyGoto action_47
action_95 _ = happyReduce_26

action_96 (12) = happyShift action_2
action_96 (13) = happyShift action_4
action_96 (14) = happyShift action_5
action_96 (15) = happyShift action_6
action_96 (16) = happyShift action_7
action_96 (17) = happyShift action_8
action_96 (18) = happyShift action_9
action_96 (19) = happyShift action_10
action_96 (20) = happyShift action_11
action_96 (21) = happyShift action_12
action_96 (22) = happyShift action_13
action_96 (23) = happyShift action_14
action_96 (24) = happyShift action_15
action_96 (25) = happyShift action_16
action_96 (26) = happyShift action_17
action_96 (27) = happyShift action_18
action_96 (28) = happyShift action_19
action_96 (29) = happyShift action_20
action_96 (30) = happyShift action_21
action_96 (31) = happyShift action_22
action_96 (35) = happyShift action_23
action_96 (37) = happyShift action_24
action_96 (40) = happyShift action_25
action_96 (41) = happyShift action_26
action_96 (4) = happyGoto action_108
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (35) = happyShift action_107
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_15

action_99 _ = happyReduce_16

action_100 (12) = happyShift action_2
action_100 (13) = happyShift action_4
action_100 (14) = happyShift action_5
action_100 (15) = happyShift action_6
action_100 (16) = happyShift action_7
action_100 (17) = happyShift action_8
action_100 (18) = happyShift action_9
action_100 (19) = happyShift action_10
action_100 (20) = happyShift action_11
action_100 (21) = happyShift action_12
action_100 (22) = happyShift action_13
action_100 (23) = happyShift action_14
action_100 (24) = happyShift action_15
action_100 (25) = happyShift action_16
action_100 (26) = happyShift action_17
action_100 (27) = happyShift action_18
action_100 (28) = happyShift action_19
action_100 (29) = happyShift action_20
action_100 (30) = happyShift action_21
action_100 (31) = happyShift action_22
action_100 (35) = happyShift action_23
action_100 (37) = happyShift action_24
action_100 (39) = happyShift action_48
action_100 (40) = happyShift action_25
action_100 (41) = happyShift action_26
action_100 (4) = happyGoto action_106
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (12) = happyFail []
action_101 (13) = happyFail []
action_101 (30) = happyShift action_21
action_101 (35) = happyFail []
action_101 (37) = happyFail []
action_101 (40) = happyFail []
action_101 (41) = happyFail []
action_101 (4) = happyGoto action_47
action_101 _ = happyReduce_21

action_102 _ = happyReduce_33

action_103 (12) = happyShift action_2
action_103 (13) = happyShift action_4
action_103 (14) = happyShift action_5
action_103 (15) = happyShift action_6
action_103 (16) = happyShift action_7
action_103 (17) = happyShift action_8
action_103 (18) = happyShift action_9
action_103 (19) = happyShift action_10
action_103 (20) = happyShift action_11
action_103 (21) = happyShift action_12
action_103 (22) = happyShift action_13
action_103 (23) = happyShift action_14
action_103 (24) = happyShift action_15
action_103 (25) = happyShift action_16
action_103 (26) = happyShift action_17
action_103 (27) = happyShift action_18
action_103 (28) = happyShift action_19
action_103 (29) = happyShift action_20
action_103 (30) = happyShift action_21
action_103 (31) = happyShift action_22
action_103 (35) = happyShift action_23
action_103 (37) = happyShift action_24
action_103 (40) = happyShift action_25
action_103 (41) = happyShift action_26
action_103 (4) = happyGoto action_105
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (39) = happyShift action_88
action_104 _ = happyReduce_31

action_105 (12) = happyShift action_2
action_105 (13) = happyShift action_4
action_105 (14) = happyShift action_5
action_105 (15) = happyShift action_6
action_105 (16) = happyShift action_7
action_105 (17) = happyShift action_8
action_105 (18) = happyShift action_9
action_105 (19) = happyShift action_10
action_105 (20) = happyShift action_11
action_105 (21) = happyShift action_12
action_105 (22) = happyShift action_13
action_105 (23) = happyShift action_14
action_105 (24) = happyShift action_15
action_105 (25) = happyShift action_16
action_105 (26) = happyShift action_17
action_105 (27) = happyShift action_18
action_105 (28) = happyShift action_19
action_105 (29) = happyShift action_20
action_105 (30) = happyShift action_21
action_105 (31) = happyShift action_22
action_105 (34) = happyShift action_110
action_105 (35) = happyShift action_23
action_105 (37) = happyShift action_24
action_105 (39) = happyShift action_48
action_105 (40) = happyShift action_25
action_105 (41) = happyShift action_26
action_105 (4) = happyGoto action_47
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (12) = happyFail []
action_106 (13) = happyFail []
action_106 (34) = happyReduce_19
action_106 (36) = happyReduce_19
action_106 (38) = happyReduce_19
action_106 (40) = happyFail []
action_106 (41) = happyFail []
action_106 (42) = happyReduce_19
action_106 (4) = happyGoto action_47
action_106 _ = happyReduce_23

action_107 (12) = happyShift action_2
action_107 (13) = happyShift action_4
action_107 (14) = happyShift action_5
action_107 (15) = happyShift action_6
action_107 (16) = happyShift action_7
action_107 (17) = happyShift action_8
action_107 (18) = happyShift action_9
action_107 (19) = happyShift action_10
action_107 (20) = happyShift action_11
action_107 (21) = happyShift action_12
action_107 (22) = happyShift action_13
action_107 (23) = happyShift action_14
action_107 (24) = happyShift action_15
action_107 (25) = happyShift action_16
action_107 (26) = happyShift action_17
action_107 (27) = happyShift action_18
action_107 (28) = happyShift action_19
action_107 (29) = happyShift action_20
action_107 (30) = happyShift action_21
action_107 (31) = happyShift action_22
action_107 (35) = happyShift action_23
action_107 (37) = happyShift action_24
action_107 (40) = happyShift action_25
action_107 (41) = happyShift action_26
action_107 (4) = happyGoto action_109
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (12) = happyFail []
action_108 (13) = happyFail []
action_108 (30) = happyShift action_21
action_108 (35) = happyFail []
action_108 (37) = happyFail []
action_108 (40) = happyFail []
action_108 (41) = happyFail []
action_108 (4) = happyGoto action_47
action_108 _ = happyReduce_13

action_109 (12) = happyShift action_2
action_109 (13) = happyShift action_4
action_109 (14) = happyShift action_5
action_109 (15) = happyShift action_6
action_109 (16) = happyShift action_7
action_109 (17) = happyShift action_8
action_109 (18) = happyShift action_9
action_109 (19) = happyShift action_10
action_109 (20) = happyShift action_11
action_109 (21) = happyShift action_12
action_109 (22) = happyShift action_13
action_109 (23) = happyShift action_14
action_109 (24) = happyShift action_15
action_109 (25) = happyShift action_16
action_109 (26) = happyShift action_17
action_109 (27) = happyShift action_18
action_109 (28) = happyShift action_19
action_109 (29) = happyShift action_20
action_109 (30) = happyShift action_21
action_109 (31) = happyShift action_22
action_109 (35) = happyShift action_23
action_109 (36) = happyShift action_112
action_109 (37) = happyShift action_24
action_109 (39) = happyShift action_48
action_109 (40) = happyShift action_25
action_109 (41) = happyShift action_26
action_109 (4) = happyGoto action_47
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (12) = happyShift action_2
action_110 (13) = happyShift action_4
action_110 (14) = happyShift action_5
action_110 (15) = happyShift action_6
action_110 (16) = happyShift action_7
action_110 (17) = happyShift action_8
action_110 (18) = happyShift action_9
action_110 (19) = happyShift action_10
action_110 (20) = happyShift action_11
action_110 (21) = happyShift action_12
action_110 (22) = happyShift action_13
action_110 (23) = happyShift action_14
action_110 (24) = happyShift action_15
action_110 (25) = happyShift action_16
action_110 (26) = happyShift action_17
action_110 (27) = happyShift action_18
action_110 (28) = happyShift action_19
action_110 (29) = happyShift action_20
action_110 (30) = happyShift action_21
action_110 (31) = happyShift action_22
action_110 (35) = happyShift action_23
action_110 (37) = happyShift action_24
action_110 (40) = happyShift action_25
action_110 (41) = happyShift action_26
action_110 (4) = happyGoto action_111
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (12) = happyShift action_2
action_111 (13) = happyShift action_4
action_111 (14) = happyShift action_5
action_111 (15) = happyShift action_6
action_111 (16) = happyShift action_7
action_111 (17) = happyShift action_8
action_111 (18) = happyShift action_9
action_111 (19) = happyShift action_10
action_111 (20) = happyShift action_11
action_111 (21) = happyShift action_12
action_111 (22) = happyShift action_13
action_111 (23) = happyShift action_14
action_111 (24) = happyShift action_15
action_111 (25) = happyShift action_16
action_111 (26) = happyShift action_17
action_111 (27) = happyShift action_18
action_111 (28) = happyShift action_19
action_111 (29) = happyShift action_20
action_111 (30) = happyShift action_21
action_111 (35) = happyShift action_23
action_111 (37) = happyShift action_24
action_111 (39) = happyShift action_48
action_111 (40) = happyShift action_25
action_111 (41) = happyShift action_26
action_111 (4) = happyGoto action_47
action_111 _ = happyReduce_22

action_112 (35) = happyShift action_113
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (12) = happyShift action_2
action_113 (13) = happyShift action_4
action_113 (14) = happyShift action_5
action_113 (15) = happyShift action_6
action_113 (16) = happyShift action_7
action_113 (17) = happyShift action_8
action_113 (18) = happyShift action_9
action_113 (19) = happyShift action_10
action_113 (20) = happyShift action_11
action_113 (21) = happyShift action_12
action_113 (22) = happyShift action_13
action_113 (23) = happyShift action_14
action_113 (24) = happyShift action_15
action_113 (25) = happyShift action_16
action_113 (26) = happyShift action_17
action_113 (27) = happyShift action_18
action_113 (28) = happyShift action_19
action_113 (29) = happyShift action_20
action_113 (30) = happyShift action_21
action_113 (31) = happyShift action_22
action_113 (35) = happyShift action_23
action_113 (37) = happyShift action_24
action_113 (40) = happyShift action_25
action_113 (41) = happyShift action_26
action_113 (4) = happyGoto action_114
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (12) = happyShift action_2
action_114 (13) = happyShift action_4
action_114 (14) = happyShift action_5
action_114 (15) = happyShift action_6
action_114 (16) = happyShift action_7
action_114 (17) = happyShift action_8
action_114 (18) = happyShift action_9
action_114 (19) = happyShift action_10
action_114 (20) = happyShift action_11
action_114 (21) = happyShift action_12
action_114 (22) = happyShift action_13
action_114 (23) = happyShift action_14
action_114 (24) = happyShift action_15
action_114 (25) = happyShift action_16
action_114 (26) = happyShift action_17
action_114 (27) = happyShift action_18
action_114 (28) = happyShift action_19
action_114 (29) = happyShift action_20
action_114 (30) = happyShift action_21
action_114 (31) = happyShift action_22
action_114 (35) = happyShift action_23
action_114 (36) = happyShift action_115
action_114 (37) = happyShift action_24
action_114 (39) = happyShift action_48
action_114 (40) = happyShift action_25
action_114 (41) = happyShift action_26
action_114 (4) = happyGoto action_47
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_14

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

happyReduce_13 = happyReduce 8 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmSubtile happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 13 4 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_12) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmCombine happy_var_3 happy_var_6 happy_var_9 happy_var_12
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 7 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmCombineH happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 7 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmCombineV happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRepeatH happy_var_2 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRepeatV happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 8 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmReplace happy_var_3 happy_var_5 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLength happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 7 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_7) `HappyStk`
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

happyReduce_22 = happyReduce 10 4 happyReduction_22
happyReduction_22 ((HappyAbsSyn4  happy_var_10) `HappyStk`
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

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  4 happyReduction_24
happyReduction_24 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCell happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmComma happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TyAxis
	)

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_29 = happySpecReduce_1  5 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn5
		 (TyTile
	)

happyReduce_30 = happySpecReduce_1  5 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn5
		 (TyBlank
	)

happyReduce_31 = happySpecReduce_3  5 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  5 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (TyCell happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  5 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyComma happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

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
	TokenCombineH _ -> cont 24;
	TokenCombineV _ -> cont 25;
	TokenRepeatH _ -> cont 26;
	TokenRepeatV _ -> cont 27;
	TokenReplace _ -> cont 28;
	TokenLength _ -> cont 29;
	TokenLambda _ -> cont 30;
	TokenLet _ -> cont 31;
	TokenHasType _ -> cont 32;
	TokenEq _ -> cont 33;
	TokenIn _ -> cont 34;
	TokenLParen _ -> cont 35;
	TokenRParen _ -> cont 36;
	TokenLSquBracket _ -> cont 37;
	TokenRSquBracket _ -> cont 38;
	TokenComma _ -> cont 39;
	TokenInt _ happy_dollar_dollar -> cont 40;
	TokenVar _ happy_dollar_dollar -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
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

data TileType = TyInt | TyAxis | TyTile | TyBlank | TyCell TileType | TyFun TileType TileType | TyComma TileType TileType
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr | TmCell Expr | TmComma Expr Expr
            | TmReflect Expr Expr 
            | TmRotate Expr Expr
            | TmScale Expr Expr
            | TmSubtile Expr Expr Expr Expr
            | TmCombine Expr Expr Expr Expr
            | TmCombineH Expr Expr
            | TmCombineV Expr Expr
            | TmRepeatH Expr Expr
            | TmRepeatV Expr Expr
            | TmReplace Expr Expr Expr Expr
            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
            | TmLength Expr
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

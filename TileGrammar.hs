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
happyExpList = Happy_Data_Array.listArray (0,638) ([63488,36863,50,4,0,0,0,0,65535,1873,0,0,49152,32767,404,65504,51775,61440,8191,101,65528,12943,64512,18431,25,65534,3235,65280,20991,32774,65535,808,65472,38015,1,0,2,65520,25887,63488,36863,50,0,64,0,8192,0,0,16,65408,10495,49155,32767,404,0,0,0,0,0,65528,16015,64512,51199,29,0,2048,0,0,32772,65535,808,65472,54399,57345,16383,234,65520,25887,63488,36863,58,65532,7495,58880,41368,14,65535,1873,65408,43263,49155,32767,468,65504,59967,12288,4095,117,65528,14991,0,0,0,65534,3235,768,20608,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65024,41983,12,65535,1905,0,0,0,0,0,65504,59967,0,8192,0,0,16,0,0,0,0,0,124,0,15872,0,0,65472,38015,1,0,2,65520,30495,63488,36863,50,65532,6471,1536,57600,32780,0,288,0,0,0,0,0,0,0,0,0,57344,3,0,512,32768,63492,0,0,0,1024,15872,0,0,0,16384,57344,16383,202,65520,25887,63488,36863,59,12,6594,65024,41983,12,0,16,65408,43263,3,8192,0,0,0,61440,8191,101,0,2048,64512,26623,29,0,0,65280,20991,6,16384,0,65472,56447,57345,16383,202,65520,29967,0,32768,0,65532,6471,65024,58367,14,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Axis","Int","Tile","Blank","Cell","arr","x","y","tile","blank","reflect","rotate","scale","AND","NOT","OR","subtile","combine","repeatH","repeatV","replace","lam","let","':'","'='","in","'('","')'","'['","']'","','","int","var","%eof"]
        bit_start = st Prelude.* 39
        bit_end = (st Prelude.+ 1) Prelude.* 39
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..38]
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
action_0 (32) = happyShift action_20
action_0 (34) = happyShift action_21
action_0 (37) = happyShift action_22
action_0 (38) = happyShift action_23
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
action_3 (32) = happyShift action_20
action_3 (34) = happyShift action_21
action_3 (36) = happyShift action_42
action_3 (37) = happyShift action_22
action_3 (38) = happyShift action_23
action_3 (39) = happyAccept
action_3 (4) = happyGoto action_41
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
action_5 (32) = happyShift action_20
action_5 (34) = happyShift action_21
action_5 (37) = happyShift action_22
action_5 (38) = happyShift action_23
action_5 (4) = happyGoto action_40
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
action_6 (32) = happyShift action_20
action_6 (34) = happyShift action_21
action_6 (37) = happyShift action_22
action_6 (38) = happyShift action_23
action_6 (4) = happyGoto action_39
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
action_7 (32) = happyShift action_20
action_7 (34) = happyShift action_21
action_7 (37) = happyShift action_22
action_7 (38) = happyShift action_23
action_7 (4) = happyGoto action_38
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
action_8 (32) = happyShift action_20
action_8 (34) = happyShift action_21
action_8 (37) = happyShift action_22
action_8 (38) = happyShift action_23
action_8 (4) = happyGoto action_37
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
action_9 (32) = happyShift action_20
action_9 (34) = happyShift action_21
action_9 (37) = happyShift action_22
action_9 (38) = happyShift action_23
action_9 (4) = happyGoto action_36
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
action_10 (32) = happyShift action_20
action_10 (34) = happyShift action_21
action_10 (37) = happyShift action_22
action_10 (38) = happyShift action_23
action_10 (4) = happyGoto action_35
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
action_11 (32) = happyShift action_20
action_11 (34) = happyShift action_21
action_11 (37) = happyShift action_22
action_11 (38) = happyShift action_23
action_11 (4) = happyGoto action_34
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
action_12 (32) = happyShift action_20
action_12 (34) = happyShift action_21
action_12 (37) = happyShift action_22
action_12 (38) = happyShift action_23
action_12 (4) = happyGoto action_33
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
action_13 (32) = happyShift action_20
action_13 (34) = happyShift action_21
action_13 (37) = happyShift action_22
action_13 (38) = happyShift action_23
action_13 (4) = happyGoto action_32
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (32) = happyShift action_31
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (12) = happyShift action_2
action_15 (13) = happyShift action_4
action_15 (14) = happyShift action_5
action_15 (15) = happyShift action_6
action_15 (16) = happyShift action_7
action_15 (17) = happyShift action_8
action_15 (18) = happyShift action_9
action_15 (19) = happyShift action_10
action_15 (20) = happyShift action_11
action_15 (21) = happyShift action_12
action_15 (22) = happyShift action_13
action_15 (23) = happyShift action_14
action_15 (24) = happyShift action_15
action_15 (25) = happyShift action_16
action_15 (26) = happyShift action_17
action_15 (27) = happyShift action_18
action_15 (28) = happyShift action_19
action_15 (32) = happyShift action_20
action_15 (34) = happyShift action_21
action_15 (37) = happyShift action_22
action_15 (38) = happyShift action_23
action_15 (4) = happyGoto action_30
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_2
action_16 (13) = happyShift action_4
action_16 (14) = happyShift action_5
action_16 (15) = happyShift action_6
action_16 (16) = happyShift action_7
action_16 (17) = happyShift action_8
action_16 (18) = happyShift action_9
action_16 (19) = happyShift action_10
action_16 (20) = happyShift action_11
action_16 (21) = happyShift action_12
action_16 (22) = happyShift action_13
action_16 (23) = happyShift action_14
action_16 (24) = happyShift action_15
action_16 (25) = happyShift action_16
action_16 (26) = happyShift action_17
action_16 (27) = happyShift action_18
action_16 (28) = happyShift action_19
action_16 (32) = happyShift action_20
action_16 (34) = happyShift action_21
action_16 (37) = happyShift action_22
action_16 (38) = happyShift action_23
action_16 (4) = happyGoto action_29
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (32) = happyShift action_28
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (32) = happyShift action_27
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (32) = happyShift action_26
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
action_20 (32) = happyShift action_20
action_20 (34) = happyShift action_21
action_20 (37) = happyShift action_22
action_20 (38) = happyShift action_23
action_20 (4) = happyGoto action_25
action_20 _ = happyFail (happyExpListPerState 20)

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
action_21 (26) = happyShift action_17
action_21 (27) = happyShift action_18
action_21 (28) = happyShift action_19
action_21 (32) = happyShift action_20
action_21 (34) = happyShift action_21
action_21 (37) = happyShift action_22
action_21 (38) = happyShift action_23
action_21 (4) = happyGoto action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_3

action_23 _ = happyReduce_4

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
action_24 (32) = happyShift action_20
action_24 (34) = happyShift action_21
action_24 (35) = happyShift action_58
action_24 (36) = happyShift action_42
action_24 (37) = happyShift action_22
action_24 (38) = happyShift action_23
action_24 (4) = happyGoto action_41
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
action_25 (26) = happyShift action_17
action_25 (27) = happyShift action_18
action_25 (28) = happyShift action_19
action_25 (32) = happyShift action_20
action_25 (33) = happyShift action_57
action_25 (34) = happyShift action_21
action_25 (36) = happyShift action_42
action_25 (37) = happyShift action_22
action_25 (38) = happyShift action_23
action_25 (4) = happyGoto action_41
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (38) = happyShift action_56
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (38) = happyShift action_55
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
action_28 (32) = happyShift action_20
action_28 (34) = happyShift action_21
action_28 (37) = happyShift action_22
action_28 (38) = happyShift action_23
action_28 (4) = happyGoto action_54
action_28 _ = happyFail (happyExpListPerState 28)

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
action_29 (26) = happyShift action_17
action_29 (27) = happyShift action_18
action_29 (28) = happyShift action_19
action_29 (32) = happyShift action_20
action_29 (34) = happyShift action_21
action_29 (36) = happyShift action_42
action_29 (37) = happyShift action_22
action_29 (38) = happyShift action_23
action_29 (4) = happyGoto action_53
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
action_30 (26) = happyShift action_17
action_30 (27) = happyShift action_18
action_30 (28) = happyShift action_19
action_30 (32) = happyShift action_20
action_30 (34) = happyShift action_21
action_30 (36) = happyShift action_42
action_30 (37) = happyShift action_22
action_30 (38) = happyShift action_23
action_30 (4) = happyGoto action_52
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
action_31 (26) = happyShift action_17
action_31 (27) = happyShift action_18
action_31 (28) = happyShift action_19
action_31 (32) = happyShift action_20
action_31 (34) = happyShift action_21
action_31 (37) = happyShift action_22
action_31 (38) = happyShift action_23
action_31 (4) = happyGoto action_51
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
action_32 (26) = happyShift action_17
action_32 (27) = happyShift action_18
action_32 (28) = happyShift action_19
action_32 (32) = happyShift action_50
action_32 (34) = happyShift action_21
action_32 (36) = happyShift action_42
action_32 (37) = happyShift action_22
action_32 (38) = happyShift action_23
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
action_33 (26) = happyShift action_17
action_33 (27) = happyShift action_18
action_33 (28) = happyShift action_19
action_33 (32) = happyShift action_20
action_33 (34) = happyShift action_21
action_33 (36) = happyShift action_42
action_33 (37) = happyShift action_22
action_33 (38) = happyShift action_23
action_33 (4) = happyGoto action_49
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_2
action_34 (13) = happyShift action_4
action_34 (16) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (18) = happyShift action_9
action_34 (22) = happyShift action_13
action_34 (23) = happyShift action_14
action_34 (26) = happyShift action_17
action_34 (27) = happyShift action_18
action_34 (32) = happyShift action_20
action_34 (34) = happyShift action_21
action_34 (36) = happyShift action_42
action_34 (37) = happyShift action_22
action_34 (38) = happyShift action_23
action_34 (4) = happyGoto action_41
action_34 _ = happyReduce_11

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
action_35 (32) = happyShift action_20
action_35 (34) = happyShift action_21
action_35 (36) = happyShift action_42
action_35 (37) = happyShift action_22
action_35 (38) = happyShift action_23
action_35 (4) = happyGoto action_48
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
action_36 (32) = happyShift action_20
action_36 (34) = happyShift action_21
action_36 (36) = happyShift action_42
action_36 (37) = happyShift action_22
action_36 (38) = happyShift action_23
action_36 (4) = happyGoto action_47
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
action_37 (32) = happyShift action_20
action_37 (34) = happyShift action_21
action_37 (36) = happyShift action_42
action_37 (37) = happyShift action_22
action_37 (38) = happyShift action_23
action_37 (4) = happyGoto action_46
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
action_38 (32) = happyShift action_20
action_38 (34) = happyShift action_21
action_38 (36) = happyShift action_42
action_38 (37) = happyShift action_22
action_38 (38) = happyShift action_23
action_38 (4) = happyGoto action_45
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (12) = happyShift action_2
action_39 (13) = happyShift action_4
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
action_39 (32) = happyShift action_20
action_39 (34) = happyShift action_21
action_39 (36) = happyShift action_42
action_39 (37) = happyShift action_22
action_39 (38) = happyShift action_23
action_39 (4) = happyGoto action_41
action_39 _ = happyReduce_6

action_40 (12) = happyShift action_2
action_40 (13) = happyShift action_4
action_40 (14) = happyShift action_5
action_40 (15) = happyShift action_6
action_40 (16) = happyShift action_7
action_40 (17) = happyShift action_8
action_40 (18) = happyShift action_9
action_40 (19) = happyShift action_10
action_40 (20) = happyShift action_11
action_40 (21) = happyShift action_12
action_40 (22) = happyShift action_13
action_40 (23) = happyShift action_14
action_40 (24) = happyShift action_15
action_40 (25) = happyShift action_16
action_40 (26) = happyShift action_17
action_40 (27) = happyShift action_18
action_40 (28) = happyShift action_19
action_40 (32) = happyShift action_20
action_40 (34) = happyShift action_21
action_40 (36) = happyShift action_42
action_40 (37) = happyShift action_22
action_40 (38) = happyShift action_23
action_40 (4) = happyGoto action_44
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (4) = happyGoto action_41
action_41 _ = happyReduce_20

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
action_42 (32) = happyShift action_20
action_42 (34) = happyShift action_21
action_42 (37) = happyShift action_22
action_42 (38) = happyShift action_23
action_42 (4) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (12) = happyShift action_2
action_43 (13) = happyShift action_4
action_43 (27) = happyShift action_18
action_43 (32) = happyShift action_20
action_43 (34) = happyShift action_21
action_43 (37) = happyShift action_22
action_43 (38) = happyShift action_23
action_43 (4) = happyGoto action_41
action_43 _ = happyReduce_23

action_44 (31) = happyReduce_5
action_44 (33) = happyReduce_5
action_44 (35) = happyReduce_5
action_44 (39) = happyReduce_5
action_44 (4) = happyGoto action_41
action_44 _ = happyReduce_20

action_45 (31) = happyReduce_7
action_45 (33) = happyReduce_7
action_45 (35) = happyReduce_7
action_45 (39) = happyReduce_7
action_45 (4) = happyGoto action_41
action_45 _ = happyReduce_20

action_46 (31) = happyReduce_8
action_46 (33) = happyReduce_8
action_46 (35) = happyReduce_8
action_46 (39) = happyReduce_8
action_46 (4) = happyGoto action_41
action_46 _ = happyReduce_20

action_47 (31) = happyReduce_9
action_47 (33) = happyReduce_9
action_47 (35) = happyReduce_9
action_47 (39) = happyReduce_9
action_47 (4) = happyGoto action_41
action_47 _ = happyReduce_20

action_48 (31) = happyReduce_10
action_48 (33) = happyReduce_10
action_48 (35) = happyReduce_10
action_48 (39) = happyReduce_10
action_48 (4) = happyGoto action_41
action_48 _ = happyReduce_20

action_49 (31) = happyReduce_12
action_49 (33) = happyReduce_12
action_49 (35) = happyReduce_12
action_49 (39) = happyReduce_12
action_49 (4) = happyGoto action_41
action_49 _ = happyReduce_20

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
action_50 (26) = happyShift action_17
action_50 (27) = happyShift action_18
action_50 (28) = happyShift action_19
action_50 (32) = happyShift action_20
action_50 (34) = happyShift action_21
action_50 (37) = happyShift action_22
action_50 (38) = happyShift action_23
action_50 (4) = happyGoto action_63
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (12) = happyShift action_2
action_51 (13) = happyShift action_4
action_51 (14) = happyShift action_5
action_51 (15) = happyShift action_6
action_51 (16) = happyShift action_7
action_51 (17) = happyShift action_8
action_51 (18) = happyShift action_9
action_51 (19) = happyShift action_10
action_51 (20) = happyShift action_11
action_51 (21) = happyShift action_12
action_51 (22) = happyShift action_13
action_51 (23) = happyShift action_14
action_51 (24) = happyShift action_15
action_51 (25) = happyShift action_16
action_51 (26) = happyShift action_17
action_51 (27) = happyShift action_18
action_51 (28) = happyShift action_19
action_51 (32) = happyShift action_20
action_51 (33) = happyShift action_62
action_51 (34) = happyShift action_21
action_51 (36) = happyShift action_42
action_51 (37) = happyShift action_22
action_51 (38) = happyShift action_23
action_51 (4) = happyGoto action_41
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (31) = happyReduce_15
action_52 (33) = happyReduce_15
action_52 (35) = happyReduce_15
action_52 (39) = happyReduce_15
action_52 (4) = happyGoto action_41
action_52 _ = happyReduce_20

action_53 (31) = happyReduce_16
action_53 (33) = happyReduce_16
action_53 (35) = happyReduce_16
action_53 (39) = happyReduce_16
action_53 (4) = happyGoto action_41
action_53 _ = happyReduce_20

action_54 (12) = happyShift action_2
action_54 (13) = happyShift action_4
action_54 (14) = happyShift action_5
action_54 (15) = happyShift action_6
action_54 (16) = happyShift action_7
action_54 (17) = happyShift action_8
action_54 (18) = happyShift action_9
action_54 (19) = happyShift action_10
action_54 (20) = happyShift action_11
action_54 (21) = happyShift action_12
action_54 (22) = happyShift action_13
action_54 (23) = happyShift action_14
action_54 (24) = happyShift action_15
action_54 (25) = happyShift action_16
action_54 (26) = happyShift action_17
action_54 (27) = happyShift action_18
action_54 (28) = happyShift action_19
action_54 (32) = happyShift action_20
action_54 (34) = happyShift action_21
action_54 (36) = happyShift action_61
action_54 (37) = happyShift action_22
action_54 (38) = happyShift action_23
action_54 (4) = happyGoto action_41
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (29) = happyShift action_60
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (29) = happyShift action_59
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_21

action_58 _ = happyReduce_22

action_59 (6) = happyShift action_68
action_59 (7) = happyShift action_69
action_59 (8) = happyShift action_70
action_59 (9) = happyShift action_71
action_59 (10) = happyShift action_72
action_59 (5) = happyGoto action_73
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_68
action_60 (7) = happyShift action_69
action_60 (8) = happyShift action_70
action_60 (9) = happyShift action_71
action_60 (10) = happyShift action_72
action_60 (5) = happyGoto action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (12) = happyShift action_2
action_61 (13) = happyShift action_4
action_61 (14) = happyShift action_5
action_61 (15) = happyShift action_6
action_61 (16) = happyShift action_7
action_61 (17) = happyShift action_8
action_61 (18) = happyShift action_9
action_61 (19) = happyShift action_10
action_61 (20) = happyShift action_11
action_61 (21) = happyShift action_12
action_61 (22) = happyShift action_13
action_61 (23) = happyShift action_14
action_61 (24) = happyShift action_15
action_61 (25) = happyShift action_16
action_61 (26) = happyShift action_17
action_61 (27) = happyShift action_18
action_61 (28) = happyShift action_19
action_61 (32) = happyShift action_20
action_61 (34) = happyShift action_21
action_61 (37) = happyShift action_22
action_61 (38) = happyShift action_23
action_61 (4) = happyGoto action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (32) = happyShift action_65
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
action_63 (26) = happyShift action_17
action_63 (27) = happyShift action_18
action_63 (28) = happyShift action_19
action_63 (32) = happyShift action_20
action_63 (33) = happyShift action_57
action_63 (34) = happyShift action_21
action_63 (36) = happyShift action_64
action_63 (37) = happyShift action_22
action_63 (38) = happyShift action_23
action_63 (4) = happyGoto action_41
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
action_64 (26) = happyShift action_17
action_64 (27) = happyShift action_18
action_64 (28) = happyShift action_19
action_64 (32) = happyShift action_20
action_64 (34) = happyShift action_21
action_64 (37) = happyShift action_22
action_64 (38) = happyShift action_23
action_64 (4) = happyGoto action_81
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (12) = happyShift action_2
action_65 (13) = happyShift action_4
action_65 (14) = happyShift action_5
action_65 (15) = happyShift action_6
action_65 (16) = happyShift action_7
action_65 (17) = happyShift action_8
action_65 (18) = happyShift action_9
action_65 (19) = happyShift action_10
action_65 (20) = happyShift action_11
action_65 (21) = happyShift action_12
action_65 (22) = happyShift action_13
action_65 (23) = happyShift action_14
action_65 (24) = happyShift action_15
action_65 (25) = happyShift action_16
action_65 (26) = happyShift action_17
action_65 (27) = happyShift action_18
action_65 (28) = happyShift action_19
action_65 (32) = happyShift action_20
action_65 (34) = happyShift action_21
action_65 (37) = happyShift action_22
action_65 (38) = happyShift action_23
action_65 (4) = happyGoto action_80
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (12) = happyShift action_2
action_66 (13) = happyShift action_4
action_66 (27) = happyShift action_18
action_66 (32) = happyShift action_20
action_66 (33) = happyShift action_79
action_66 (34) = happyShift action_21
action_66 (37) = happyShift action_22
action_66 (38) = happyShift action_23
action_66 (4) = happyGoto action_41
action_66 _ = happyReduce_23

action_67 (11) = happyShift action_74
action_67 (33) = happyShift action_78
action_67 (36) = happyShift action_76
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_24

action_69 _ = happyReduce_25

action_70 _ = happyReduce_26

action_71 _ = happyReduce_27

action_72 (6) = happyShift action_68
action_72 (7) = happyShift action_69
action_72 (8) = happyShift action_70
action_72 (9) = happyShift action_71
action_72 (10) = happyShift action_72
action_72 (5) = happyGoto action_77
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (11) = happyShift action_74
action_73 (33) = happyShift action_75
action_73 (36) = happyShift action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (6) = happyShift action_68
action_74 (7) = happyShift action_69
action_74 (8) = happyShift action_70
action_74 (9) = happyShift action_71
action_74 (10) = happyShift action_72
action_74 (5) = happyGoto action_88
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (30) = happyShift action_87
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (6) = happyShift action_68
action_76 (7) = happyShift action_69
action_76 (8) = happyShift action_70
action_76 (9) = happyShift action_71
action_76 (10) = happyShift action_72
action_76 (5) = happyGoto action_86
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (36) = happyShift action_76
action_77 _ = happyReduce_29

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
action_78 (25) = happyShift action_16
action_78 (26) = happyShift action_17
action_78 (27) = happyShift action_18
action_78 (28) = happyShift action_19
action_78 (32) = happyShift action_20
action_78 (34) = happyShift action_21
action_78 (37) = happyShift action_22
action_78 (38) = happyShift action_23
action_78 (4) = happyGoto action_85
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (12) = happyShift action_2
action_79 (13) = happyShift action_4
action_79 (14) = happyShift action_5
action_79 (15) = happyShift action_6
action_79 (16) = happyShift action_7
action_79 (17) = happyShift action_8
action_79 (18) = happyShift action_9
action_79 (19) = happyShift action_10
action_79 (20) = happyShift action_11
action_79 (21) = happyShift action_12
action_79 (22) = happyShift action_13
action_79 (23) = happyShift action_14
action_79 (24) = happyShift action_15
action_79 (25) = happyShift action_16
action_79 (26) = happyShift action_17
action_79 (27) = happyShift action_18
action_79 (28) = happyShift action_19
action_79 (32) = happyShift action_20
action_79 (34) = happyShift action_21
action_79 (37) = happyShift action_22
action_79 (38) = happyShift action_23
action_79 (4) = happyGoto action_84
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (12) = happyShift action_2
action_80 (13) = happyShift action_4
action_80 (14) = happyShift action_5
action_80 (15) = happyShift action_6
action_80 (16) = happyShift action_7
action_80 (17) = happyShift action_8
action_80 (18) = happyShift action_9
action_80 (19) = happyShift action_10
action_80 (20) = happyShift action_11
action_80 (21) = happyShift action_12
action_80 (22) = happyShift action_13
action_80 (23) = happyShift action_14
action_80 (24) = happyShift action_15
action_80 (25) = happyShift action_16
action_80 (26) = happyShift action_17
action_80 (27) = happyShift action_18
action_80 (28) = happyShift action_19
action_80 (32) = happyShift action_20
action_80 (33) = happyShift action_83
action_80 (34) = happyShift action_21
action_80 (36) = happyShift action_42
action_80 (37) = happyShift action_22
action_80 (38) = happyShift action_23
action_80 (4) = happyGoto action_41
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (12) = happyShift action_2
action_81 (13) = happyShift action_4
action_81 (27) = happyShift action_18
action_81 (32) = happyShift action_20
action_81 (33) = happyShift action_82
action_81 (34) = happyShift action_21
action_81 (37) = happyShift action_22
action_81 (38) = happyShift action_23
action_81 (4) = happyGoto action_41
action_81 _ = happyReduce_23

action_82 (12) = happyShift action_2
action_82 (13) = happyShift action_4
action_82 (14) = happyShift action_5
action_82 (15) = happyShift action_6
action_82 (16) = happyShift action_7
action_82 (17) = happyShift action_8
action_82 (18) = happyShift action_9
action_82 (19) = happyShift action_10
action_82 (20) = happyShift action_11
action_82 (21) = happyShift action_12
action_82 (22) = happyShift action_13
action_82 (23) = happyShift action_14
action_82 (24) = happyShift action_15
action_82 (25) = happyShift action_16
action_82 (26) = happyShift action_17
action_82 (27) = happyShift action_18
action_82 (28) = happyShift action_19
action_82 (32) = happyShift action_20
action_82 (34) = happyShift action_21
action_82 (37) = happyShift action_22
action_82 (38) = happyShift action_23
action_82 (4) = happyGoto action_92
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (32) = happyShift action_91
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (12) = happyShift action_2
action_84 (13) = happyShift action_4
action_84 (14) = happyShift action_5
action_84 (15) = happyShift action_6
action_84 (16) = happyShift action_7
action_84 (17) = happyShift action_8
action_84 (18) = happyShift action_9
action_84 (19) = happyShift action_10
action_84 (20) = happyShift action_11
action_84 (21) = happyShift action_12
action_84 (22) = happyShift action_13
action_84 (23) = happyShift action_14
action_84 (24) = happyShift action_15
action_84 (25) = happyShift action_16
action_84 (26) = happyShift action_17
action_84 (27) = happyShift action_18
action_84 (28) = happyShift action_19
action_84 (32) = happyShift action_20
action_84 (34) = happyShift action_21
action_84 (36) = happyShift action_42
action_84 (37) = happyShift action_22
action_84 (38) = happyShift action_23
action_84 (4) = happyGoto action_90
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (12) = happyFail []
action_85 (13) = happyFail []
action_85 (27) = happyShift action_18
action_85 (32) = happyFail []
action_85 (34) = happyFail []
action_85 (37) = happyFail []
action_85 (38) = happyFail []
action_85 (4) = happyGoto action_41
action_85 _ = happyReduce_18

action_86 _ = happyReduce_30

action_87 (12) = happyShift action_2
action_87 (13) = happyShift action_4
action_87 (14) = happyShift action_5
action_87 (15) = happyShift action_6
action_87 (16) = happyShift action_7
action_87 (17) = happyShift action_8
action_87 (18) = happyShift action_9
action_87 (19) = happyShift action_10
action_87 (20) = happyShift action_11
action_87 (21) = happyShift action_12
action_87 (22) = happyShift action_13
action_87 (23) = happyShift action_14
action_87 (24) = happyShift action_15
action_87 (25) = happyShift action_16
action_87 (26) = happyShift action_17
action_87 (27) = happyShift action_18
action_87 (28) = happyShift action_19
action_87 (32) = happyShift action_20
action_87 (34) = happyShift action_21
action_87 (37) = happyShift action_22
action_87 (38) = happyShift action_23
action_87 (4) = happyGoto action_89
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (36) = happyShift action_76
action_88 _ = happyReduce_28

action_89 (12) = happyShift action_2
action_89 (13) = happyShift action_4
action_89 (14) = happyShift action_5
action_89 (15) = happyShift action_6
action_89 (16) = happyShift action_7
action_89 (17) = happyShift action_8
action_89 (18) = happyShift action_9
action_89 (19) = happyShift action_10
action_89 (20) = happyShift action_11
action_89 (21) = happyShift action_12
action_89 (22) = happyShift action_13
action_89 (23) = happyShift action_14
action_89 (24) = happyShift action_15
action_89 (25) = happyShift action_16
action_89 (26) = happyShift action_17
action_89 (27) = happyShift action_18
action_89 (28) = happyShift action_19
action_89 (31) = happyShift action_94
action_89 (32) = happyShift action_20
action_89 (34) = happyShift action_21
action_89 (36) = happyShift action_42
action_89 (37) = happyShift action_22
action_89 (38) = happyShift action_23
action_89 (4) = happyGoto action_41
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (12) = happyFail []
action_90 (13) = happyFail []
action_90 (31) = happyReduce_17
action_90 (33) = happyReduce_17
action_90 (35) = happyReduce_17
action_90 (37) = happyFail []
action_90 (38) = happyFail []
action_90 (39) = happyReduce_17
action_90 (4) = happyGoto action_41
action_90 _ = happyReduce_20

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
action_91 (32) = happyShift action_20
action_91 (34) = happyShift action_21
action_91 (37) = happyShift action_22
action_91 (38) = happyShift action_23
action_91 (4) = happyGoto action_93
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (12) = happyFail []
action_92 (13) = happyFail []
action_92 (27) = happyShift action_18
action_92 (32) = happyFail []
action_92 (34) = happyFail []
action_92 (37) = happyFail []
action_92 (38) = happyFail []
action_92 (4) = happyGoto action_41
action_92 _ = happyReduce_13

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
action_93 (32) = happyShift action_20
action_93 (33) = happyShift action_96
action_93 (34) = happyShift action_21
action_93 (36) = happyShift action_42
action_93 (37) = happyShift action_22
action_93 (38) = happyShift action_23
action_93 (4) = happyGoto action_41
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
action_94 (32) = happyShift action_20
action_94 (34) = happyShift action_21
action_94 (37) = happyShift action_22
action_94 (38) = happyShift action_23
action_94 (4) = happyGoto action_95
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (12) = happyShift action_2
action_95 (13) = happyShift action_4
action_95 (14) = happyShift action_5
action_95 (15) = happyShift action_6
action_95 (16) = happyShift action_7
action_95 (17) = happyShift action_8
action_95 (18) = happyShift action_9
action_95 (19) = happyShift action_10
action_95 (20) = happyShift action_11
action_95 (21) = happyShift action_12
action_95 (22) = happyShift action_13
action_95 (23) = happyShift action_14
action_95 (24) = happyShift action_15
action_95 (25) = happyShift action_16
action_95 (26) = happyShift action_17
action_95 (27) = happyShift action_18
action_95 (32) = happyShift action_20
action_95 (34) = happyShift action_21
action_95 (36) = happyShift action_42
action_95 (37) = happyShift action_22
action_95 (38) = happyShift action_23
action_95 (4) = happyGoto action_41
action_95 _ = happyReduce_19

action_96 (32) = happyShift action_97
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (12) = happyShift action_2
action_97 (13) = happyShift action_4
action_97 (14) = happyShift action_5
action_97 (15) = happyShift action_6
action_97 (16) = happyShift action_7
action_97 (17) = happyShift action_8
action_97 (18) = happyShift action_9
action_97 (19) = happyShift action_10
action_97 (20) = happyShift action_11
action_97 (21) = happyShift action_12
action_97 (22) = happyShift action_13
action_97 (23) = happyShift action_14
action_97 (24) = happyShift action_15
action_97 (25) = happyShift action_16
action_97 (26) = happyShift action_17
action_97 (27) = happyShift action_18
action_97 (28) = happyShift action_19
action_97 (32) = happyShift action_20
action_97 (34) = happyShift action_21
action_97 (37) = happyShift action_22
action_97 (38) = happyShift action_23
action_97 (4) = happyGoto action_98
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (12) = happyShift action_2
action_98 (13) = happyShift action_4
action_98 (14) = happyShift action_5
action_98 (15) = happyShift action_6
action_98 (16) = happyShift action_7
action_98 (17) = happyShift action_8
action_98 (18) = happyShift action_9
action_98 (19) = happyShift action_10
action_98 (20) = happyShift action_11
action_98 (21) = happyShift action_12
action_98 (22) = happyShift action_13
action_98 (23) = happyShift action_14
action_98 (24) = happyShift action_15
action_98 (25) = happyShift action_16
action_98 (26) = happyShift action_17
action_98 (27) = happyShift action_18
action_98 (28) = happyShift action_19
action_98 (32) = happyShift action_20
action_98 (33) = happyShift action_99
action_98 (34) = happyShift action_21
action_98 (36) = happyShift action_42
action_98 (37) = happyShift action_22
action_98 (38) = happyShift action_23
action_98 (4) = happyGoto action_41
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_14

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

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRepeatH happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRepeatV happy_var_2 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 8 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_8) `HappyStk`
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

happyReduce_18 = happyReduce 7 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_7) `HappyStk`
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

happyReduce_19 = happyReduce 10 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_10) `HappyStk`
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

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCell happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmComma happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn5
		 (TyAxis
	)

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TyTile
	)

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TyBlank
	)

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (TyCell happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyComma happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

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
	TokenRepeatH _ -> cont 24;
	TokenRepeatV _ -> cont 25;
	TokenReplace _ -> cont 26;
	TokenLambda _ -> cont 27;
	TokenLet _ -> cont 28;
	TokenHasType _ -> cont 29;
	TokenEq _ -> cont 30;
	TokenIn _ -> cont 31;
	TokenLParen _ -> cont 32;
	TokenRParen _ -> cont 33;
	TokenLSquBracket _ -> cont 34;
	TokenRSquBracket _ -> cont 35;
	TokenComma _ -> cont 36;
	TokenInt _ happy_dollar_dollar -> cont 37;
	TokenVar _ happy_dollar_dollar -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
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
            | TmRepeatH Expr Expr
            | TmRepeatV Expr Expr
            | TmReplace Expr Expr Expr Expr
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

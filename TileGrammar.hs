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
happyExpList = Happy_Data_Array.listArray (0,399) ([63488,63745,18431,29,16,0,0,0,0,0,0,61440,7,0,0,0,0,0,16128,65312,43263,3,16510,65534,1873,0,0,0,0,0,0,0,61440,61955,36863,58,0,0,256,49152,51215,16383,234,8064,65424,54399,1,8255,65535,936,32256,65088,20991,7,33020,65532,3747,63488,63745,18431,29,1008,65522,14991,0,0,0,1,0,0,512,0,0,0,4,16128,65312,43263,3,16510,65534,1873,0,0,8192,0,504,65529,7495,0,0,32768,0,2016,65508,29983,49152,51215,16383,234,0,0,0,0,0,0,0,0,0,4096,0,33020,65532,3747,0,254,0,2,64512,1,256,0,0,0,32,0,0,0,32768,36895,32767,468,65280,65343,43263,3,32766,65534,1873,64512,64640,41983,14,504,65529,7495,61440,61955,36863,58,63488,3,256,49152,53247,16383,234,0,0,0,0,16383,65535,936,65024,65151,20991,7,65532,65532,3747,63488,63999,18431,29,1008,65522,14991,0,3064,0,0,61440,7,0,32768,40959,32767,468,16128,65312,43263,3,16510,65534,1873,64512,64640,41983,14,504,65529,7495,61440,61955,36863,58,2016,65508,29983,49152,51215,16383,234,57344,7,0,0,0,0,0,0,0,0,0,12288,0,0,0,96,0,0,49152,0,0,0,384,0,0,61440,7,0,32768,36895,32767,468,49152,31,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,51215,16383,234,57344,15,2048,0,8128,0,16,32768,63,8192,0,0,0,0,0,0,0,0,64512,1,0,0,0,8192,0,0,0,0,0,0,0,0,49152,31,0,4,0,0,4096,1008,0,0,0,504,65529,7495,0,0,32768,0,0,0,256,0,0,0,2,57344,15,0,0,0,0,0,32768,319,0,0,33020,65532,3747,63488,63745,18431,29,1008,65522,14991,57344,58375,8191,117,4032,65480,59967,0,2016,0,8,0,16,4096,0,0,0,0,0,0,0,0,0,0,0,4032,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,4096,0,32,0,61440,3,0,0,0,0,4096,0,1008,65522,14991,0,1016,0,2,61440,7,1024,0,4064,0,8,49152,15,4096,0,16256,0,0,64512,64640,41983,14,0,0,64,0,0,0,0,0,0,0,49152,53247,16383,234,8064,65424,54399,1,0,0,0,0,0,8192,0,33020,65532,3747,0,254,8192,0,64512,0,0,57344,58375,8191,117,61440,3,0,0,4064,0,8,16128,65312,43263,3,8064,0,0,0,127,0,0,0,0,64,61440,61955,36863,58,63488,3,512,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Axis","Int","Tile","Cell","Bool","File","x","y","tile","blank","true","false","'<'","'>'","'<='","'>='","'+'","'-'","','","if","then","else","input","reflect","rotate","scale","AND","NOT","OR","subtile","combine","combineH","combineV","repeatH","repeatV","replace","length","let","':'","'='","in","'('","')'","'['","']'","int","var","for","';'","col","row","%eof"]
        bit_start = st Prelude.* 57
        bit_end = (st Prelude.+ 1) Prelude.* 57
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..56]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (12) = happyShift action_2
action_0 (13) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (25) = happyShift action_9
action_0 (28) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (30) = happyShift action_12
action_0 (31) = happyShift action_13
action_0 (32) = happyShift action_14
action_0 (33) = happyShift action_15
action_0 (34) = happyShift action_16
action_0 (35) = happyShift action_17
action_0 (36) = happyShift action_18
action_0 (37) = happyShift action_19
action_0 (38) = happyShift action_20
action_0 (39) = happyShift action_21
action_0 (40) = happyShift action_22
action_0 (41) = happyShift action_23
action_0 (42) = happyShift action_24
action_0 (43) = happyShift action_25
action_0 (47) = happyShift action_26
action_0 (49) = happyShift action_27
action_0 (51) = happyShift action_28
action_0 (52) = happyShift action_29
action_0 (53) = happyShift action_30
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (12) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (18) = happyShift action_53
action_3 (19) = happyShift action_54
action_3 (20) = happyShift action_55
action_3 (21) = happyShift action_56
action_3 (22) = happyShift action_57
action_3 (23) = happyShift action_58
action_3 (24) = happyShift action_59
action_3 (57) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (12) = happyShift action_2
action_5 (13) = happyShift action_4
action_5 (14) = happyShift action_5
action_5 (15) = happyShift action_6
action_5 (16) = happyShift action_7
action_5 (17) = happyShift action_8
action_5 (25) = happyShift action_9
action_5 (28) = happyShift action_10
action_5 (29) = happyShift action_11
action_5 (30) = happyShift action_12
action_5 (31) = happyShift action_13
action_5 (32) = happyShift action_14
action_5 (33) = happyShift action_15
action_5 (34) = happyShift action_16
action_5 (35) = happyShift action_17
action_5 (36) = happyShift action_18
action_5 (37) = happyShift action_19
action_5 (38) = happyShift action_20
action_5 (39) = happyShift action_21
action_5 (40) = happyShift action_22
action_5 (41) = happyShift action_23
action_5 (42) = happyShift action_24
action_5 (43) = happyShift action_25
action_5 (47) = happyShift action_26
action_5 (49) = happyShift action_27
action_5 (51) = happyShift action_28
action_5 (52) = happyShift action_29
action_5 (53) = happyShift action_30
action_5 (4) = happyGoto action_52
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (12) = happyShift action_2
action_6 (13) = happyShift action_4
action_6 (14) = happyShift action_5
action_6 (15) = happyShift action_6
action_6 (16) = happyShift action_7
action_6 (17) = happyShift action_8
action_6 (25) = happyShift action_9
action_6 (28) = happyShift action_10
action_6 (29) = happyShift action_11
action_6 (30) = happyShift action_12
action_6 (31) = happyShift action_13
action_6 (32) = happyShift action_14
action_6 (33) = happyShift action_15
action_6 (34) = happyShift action_16
action_6 (35) = happyShift action_17
action_6 (36) = happyShift action_18
action_6 (37) = happyShift action_19
action_6 (38) = happyShift action_20
action_6 (39) = happyShift action_21
action_6 (40) = happyShift action_22
action_6 (41) = happyShift action_23
action_6 (42) = happyShift action_24
action_6 (43) = happyShift action_25
action_6 (47) = happyShift action_26
action_6 (49) = happyShift action_27
action_6 (51) = happyShift action_28
action_6 (52) = happyShift action_29
action_6 (53) = happyShift action_30
action_6 (4) = happyGoto action_51
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_5

action_8 _ = happyReduce_6

action_9 (12) = happyShift action_2
action_9 (13) = happyShift action_4
action_9 (14) = happyShift action_5
action_9 (15) = happyShift action_6
action_9 (16) = happyShift action_7
action_9 (17) = happyShift action_8
action_9 (25) = happyShift action_9
action_9 (28) = happyShift action_10
action_9 (29) = happyShift action_11
action_9 (30) = happyShift action_12
action_9 (31) = happyShift action_13
action_9 (32) = happyShift action_14
action_9 (33) = happyShift action_15
action_9 (34) = happyShift action_16
action_9 (35) = happyShift action_17
action_9 (36) = happyShift action_18
action_9 (37) = happyShift action_19
action_9 (38) = happyShift action_20
action_9 (39) = happyShift action_21
action_9 (40) = happyShift action_22
action_9 (41) = happyShift action_23
action_9 (42) = happyShift action_24
action_9 (43) = happyShift action_25
action_9 (47) = happyShift action_26
action_9 (49) = happyShift action_27
action_9 (51) = happyShift action_28
action_9 (52) = happyShift action_29
action_9 (53) = happyShift action_30
action_9 (4) = happyGoto action_50
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (47) = happyShift action_49
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_2
action_11 (13) = happyShift action_4
action_11 (14) = happyShift action_5
action_11 (15) = happyShift action_6
action_11 (16) = happyShift action_7
action_11 (17) = happyShift action_8
action_11 (25) = happyShift action_9
action_11 (28) = happyShift action_10
action_11 (29) = happyShift action_11
action_11 (30) = happyShift action_12
action_11 (31) = happyShift action_13
action_11 (32) = happyShift action_14
action_11 (33) = happyShift action_15
action_11 (34) = happyShift action_16
action_11 (35) = happyShift action_17
action_11 (36) = happyShift action_18
action_11 (37) = happyShift action_19
action_11 (38) = happyShift action_20
action_11 (39) = happyShift action_21
action_11 (40) = happyShift action_22
action_11 (41) = happyShift action_23
action_11 (42) = happyShift action_24
action_11 (43) = happyShift action_25
action_11 (47) = happyShift action_26
action_11 (49) = happyShift action_27
action_11 (51) = happyShift action_28
action_11 (52) = happyShift action_29
action_11 (53) = happyShift action_30
action_11 (4) = happyGoto action_48
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (12) = happyShift action_2
action_12 (13) = happyShift action_4
action_12 (14) = happyShift action_5
action_12 (15) = happyShift action_6
action_12 (16) = happyShift action_7
action_12 (17) = happyShift action_8
action_12 (25) = happyShift action_9
action_12 (28) = happyShift action_10
action_12 (29) = happyShift action_11
action_12 (30) = happyShift action_12
action_12 (31) = happyShift action_13
action_12 (32) = happyShift action_14
action_12 (33) = happyShift action_15
action_12 (34) = happyShift action_16
action_12 (35) = happyShift action_17
action_12 (36) = happyShift action_18
action_12 (37) = happyShift action_19
action_12 (38) = happyShift action_20
action_12 (39) = happyShift action_21
action_12 (40) = happyShift action_22
action_12 (41) = happyShift action_23
action_12 (42) = happyShift action_24
action_12 (43) = happyShift action_25
action_12 (47) = happyShift action_26
action_12 (49) = happyShift action_27
action_12 (51) = happyShift action_28
action_12 (52) = happyShift action_29
action_12 (53) = happyShift action_30
action_12 (4) = happyGoto action_47
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_2
action_13 (13) = happyShift action_4
action_13 (14) = happyShift action_5
action_13 (15) = happyShift action_6
action_13 (16) = happyShift action_7
action_13 (17) = happyShift action_8
action_13 (25) = happyShift action_9
action_13 (28) = happyShift action_10
action_13 (29) = happyShift action_11
action_13 (30) = happyShift action_12
action_13 (31) = happyShift action_13
action_13 (32) = happyShift action_14
action_13 (33) = happyShift action_15
action_13 (34) = happyShift action_16
action_13 (35) = happyShift action_17
action_13 (36) = happyShift action_18
action_13 (37) = happyShift action_19
action_13 (38) = happyShift action_20
action_13 (39) = happyShift action_21
action_13 (40) = happyShift action_22
action_13 (41) = happyShift action_23
action_13 (42) = happyShift action_24
action_13 (43) = happyShift action_25
action_13 (47) = happyShift action_26
action_13 (49) = happyShift action_27
action_13 (51) = happyShift action_28
action_13 (52) = happyShift action_29
action_13 (53) = happyShift action_30
action_13 (4) = happyGoto action_46
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_2
action_14 (13) = happyShift action_4
action_14 (14) = happyShift action_5
action_14 (15) = happyShift action_6
action_14 (16) = happyShift action_7
action_14 (17) = happyShift action_8
action_14 (25) = happyShift action_9
action_14 (28) = happyShift action_10
action_14 (29) = happyShift action_11
action_14 (30) = happyShift action_12
action_14 (31) = happyShift action_13
action_14 (32) = happyShift action_14
action_14 (33) = happyShift action_15
action_14 (34) = happyShift action_16
action_14 (35) = happyShift action_17
action_14 (36) = happyShift action_18
action_14 (37) = happyShift action_19
action_14 (38) = happyShift action_20
action_14 (39) = happyShift action_21
action_14 (40) = happyShift action_22
action_14 (41) = happyShift action_23
action_14 (42) = happyShift action_24
action_14 (43) = happyShift action_25
action_14 (47) = happyShift action_26
action_14 (49) = happyShift action_27
action_14 (51) = happyShift action_28
action_14 (52) = happyShift action_29
action_14 (53) = happyShift action_30
action_14 (4) = happyGoto action_45
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (12) = happyShift action_2
action_15 (13) = happyShift action_4
action_15 (14) = happyShift action_5
action_15 (15) = happyShift action_6
action_15 (16) = happyShift action_7
action_15 (17) = happyShift action_8
action_15 (25) = happyShift action_9
action_15 (28) = happyShift action_10
action_15 (29) = happyShift action_11
action_15 (30) = happyShift action_12
action_15 (31) = happyShift action_13
action_15 (32) = happyShift action_14
action_15 (33) = happyShift action_15
action_15 (34) = happyShift action_16
action_15 (35) = happyShift action_17
action_15 (36) = happyShift action_18
action_15 (37) = happyShift action_19
action_15 (38) = happyShift action_20
action_15 (39) = happyShift action_21
action_15 (40) = happyShift action_22
action_15 (41) = happyShift action_23
action_15 (42) = happyShift action_24
action_15 (43) = happyShift action_25
action_15 (47) = happyShift action_26
action_15 (49) = happyShift action_27
action_15 (51) = happyShift action_28
action_15 (52) = happyShift action_29
action_15 (53) = happyShift action_30
action_15 (4) = happyGoto action_44
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_2
action_16 (13) = happyShift action_4
action_16 (14) = happyShift action_5
action_16 (15) = happyShift action_6
action_16 (16) = happyShift action_7
action_16 (17) = happyShift action_8
action_16 (25) = happyShift action_9
action_16 (28) = happyShift action_10
action_16 (29) = happyShift action_11
action_16 (30) = happyShift action_12
action_16 (31) = happyShift action_13
action_16 (32) = happyShift action_14
action_16 (33) = happyShift action_15
action_16 (34) = happyShift action_16
action_16 (35) = happyShift action_17
action_16 (36) = happyShift action_18
action_16 (37) = happyShift action_19
action_16 (38) = happyShift action_20
action_16 (39) = happyShift action_21
action_16 (40) = happyShift action_22
action_16 (41) = happyShift action_23
action_16 (42) = happyShift action_24
action_16 (43) = happyShift action_25
action_16 (47) = happyShift action_26
action_16 (49) = happyShift action_27
action_16 (51) = happyShift action_28
action_16 (52) = happyShift action_29
action_16 (53) = happyShift action_30
action_16 (4) = happyGoto action_43
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_2
action_17 (13) = happyShift action_4
action_17 (14) = happyShift action_5
action_17 (15) = happyShift action_6
action_17 (16) = happyShift action_7
action_17 (17) = happyShift action_8
action_17 (25) = happyShift action_9
action_17 (28) = happyShift action_10
action_17 (29) = happyShift action_11
action_17 (30) = happyShift action_12
action_17 (31) = happyShift action_13
action_17 (32) = happyShift action_14
action_17 (33) = happyShift action_15
action_17 (34) = happyShift action_16
action_17 (35) = happyShift action_17
action_17 (36) = happyShift action_18
action_17 (37) = happyShift action_19
action_17 (38) = happyShift action_20
action_17 (39) = happyShift action_21
action_17 (40) = happyShift action_22
action_17 (41) = happyShift action_23
action_17 (42) = happyShift action_24
action_17 (43) = happyShift action_25
action_17 (47) = happyShift action_26
action_17 (49) = happyShift action_27
action_17 (51) = happyShift action_28
action_17 (52) = happyShift action_29
action_17 (53) = happyShift action_30
action_17 (4) = happyGoto action_42
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (47) = happyShift action_41
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (47) = happyShift action_40
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (47) = happyShift action_39
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_2
action_21 (13) = happyShift action_4
action_21 (14) = happyShift action_5
action_21 (15) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (25) = happyShift action_9
action_21 (28) = happyShift action_10
action_21 (29) = happyShift action_11
action_21 (30) = happyShift action_12
action_21 (31) = happyShift action_13
action_21 (32) = happyShift action_14
action_21 (33) = happyShift action_15
action_21 (34) = happyShift action_16
action_21 (35) = happyShift action_17
action_21 (36) = happyShift action_18
action_21 (37) = happyShift action_19
action_21 (38) = happyShift action_20
action_21 (39) = happyShift action_21
action_21 (40) = happyShift action_22
action_21 (41) = happyShift action_23
action_21 (42) = happyShift action_24
action_21 (43) = happyShift action_25
action_21 (47) = happyShift action_26
action_21 (49) = happyShift action_27
action_21 (51) = happyShift action_28
action_21 (52) = happyShift action_29
action_21 (53) = happyShift action_30
action_21 (4) = happyGoto action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_2
action_22 (13) = happyShift action_4
action_22 (14) = happyShift action_5
action_22 (15) = happyShift action_6
action_22 (16) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (25) = happyShift action_9
action_22 (28) = happyShift action_10
action_22 (29) = happyShift action_11
action_22 (30) = happyShift action_12
action_22 (31) = happyShift action_13
action_22 (32) = happyShift action_14
action_22 (33) = happyShift action_15
action_22 (34) = happyShift action_16
action_22 (35) = happyShift action_17
action_22 (36) = happyShift action_18
action_22 (37) = happyShift action_19
action_22 (38) = happyShift action_20
action_22 (39) = happyShift action_21
action_22 (40) = happyShift action_22
action_22 (41) = happyShift action_23
action_22 (42) = happyShift action_24
action_22 (43) = happyShift action_25
action_22 (47) = happyShift action_26
action_22 (49) = happyShift action_27
action_22 (51) = happyShift action_28
action_22 (52) = happyShift action_29
action_22 (53) = happyShift action_30
action_22 (4) = happyGoto action_37
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (47) = happyShift action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_2
action_24 (13) = happyShift action_4
action_24 (14) = happyShift action_5
action_24 (15) = happyShift action_6
action_24 (16) = happyShift action_7
action_24 (17) = happyShift action_8
action_24 (25) = happyShift action_9
action_24 (28) = happyShift action_10
action_24 (29) = happyShift action_11
action_24 (30) = happyShift action_12
action_24 (31) = happyShift action_13
action_24 (32) = happyShift action_14
action_24 (33) = happyShift action_15
action_24 (34) = happyShift action_16
action_24 (35) = happyShift action_17
action_24 (36) = happyShift action_18
action_24 (37) = happyShift action_19
action_24 (38) = happyShift action_20
action_24 (39) = happyShift action_21
action_24 (40) = happyShift action_22
action_24 (41) = happyShift action_23
action_24 (42) = happyShift action_24
action_24 (43) = happyShift action_25
action_24 (47) = happyShift action_26
action_24 (49) = happyShift action_27
action_24 (51) = happyShift action_28
action_24 (52) = happyShift action_29
action_24 (53) = happyShift action_30
action_24 (4) = happyGoto action_35
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (47) = happyShift action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_2
action_26 (13) = happyShift action_4
action_26 (14) = happyShift action_5
action_26 (15) = happyShift action_6
action_26 (16) = happyShift action_7
action_26 (17) = happyShift action_8
action_26 (25) = happyShift action_9
action_26 (28) = happyShift action_10
action_26 (29) = happyShift action_11
action_26 (30) = happyShift action_12
action_26 (31) = happyShift action_13
action_26 (32) = happyShift action_14
action_26 (33) = happyShift action_15
action_26 (34) = happyShift action_16
action_26 (35) = happyShift action_17
action_26 (36) = happyShift action_18
action_26 (37) = happyShift action_19
action_26 (38) = happyShift action_20
action_26 (39) = happyShift action_21
action_26 (40) = happyShift action_22
action_26 (41) = happyShift action_23
action_26 (42) = happyShift action_24
action_26 (43) = happyShift action_25
action_26 (47) = happyShift action_26
action_26 (49) = happyShift action_27
action_26 (51) = happyShift action_28
action_26 (52) = happyShift action_29
action_26 (53) = happyShift action_30
action_26 (4) = happyGoto action_33
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_2
action_27 (13) = happyShift action_4
action_27 (14) = happyShift action_5
action_27 (15) = happyShift action_6
action_27 (16) = happyShift action_7
action_27 (17) = happyShift action_8
action_27 (25) = happyShift action_9
action_27 (28) = happyShift action_10
action_27 (29) = happyShift action_11
action_27 (30) = happyShift action_12
action_27 (31) = happyShift action_13
action_27 (32) = happyShift action_14
action_27 (33) = happyShift action_15
action_27 (34) = happyShift action_16
action_27 (35) = happyShift action_17
action_27 (36) = happyShift action_18
action_27 (37) = happyShift action_19
action_27 (38) = happyShift action_20
action_27 (39) = happyShift action_21
action_27 (40) = happyShift action_22
action_27 (41) = happyShift action_23
action_27 (42) = happyShift action_24
action_27 (43) = happyShift action_25
action_27 (47) = happyShift action_26
action_27 (49) = happyShift action_27
action_27 (51) = happyShift action_28
action_27 (52) = happyShift action_29
action_27 (53) = happyShift action_30
action_27 (4) = happyGoto action_32
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_3

action_29 _ = happyReduce_4

action_30 (47) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_2
action_31 (13) = happyShift action_4
action_31 (14) = happyShift action_5
action_31 (15) = happyShift action_6
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (25) = happyShift action_9
action_31 (28) = happyShift action_10
action_31 (29) = happyShift action_11
action_31 (30) = happyShift action_12
action_31 (31) = happyShift action_13
action_31 (32) = happyShift action_14
action_31 (33) = happyShift action_15
action_31 (34) = happyShift action_16
action_31 (35) = happyShift action_17
action_31 (36) = happyShift action_18
action_31 (37) = happyShift action_19
action_31 (38) = happyShift action_20
action_31 (39) = happyShift action_21
action_31 (40) = happyShift action_22
action_31 (41) = happyShift action_23
action_31 (42) = happyShift action_24
action_31 (43) = happyShift action_25
action_31 (47) = happyShift action_26
action_31 (49) = happyShift action_27
action_31 (51) = happyShift action_28
action_31 (52) = happyShift action_29
action_31 (53) = happyShift action_30
action_31 (4) = happyGoto action_85
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (18) = happyShift action_53
action_32 (19) = happyShift action_54
action_32 (20) = happyShift action_55
action_32 (21) = happyShift action_56
action_32 (22) = happyShift action_57
action_32 (23) = happyShift action_58
action_32 (24) = happyShift action_59
action_32 (50) = happyShift action_84
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (18) = happyShift action_53
action_33 (19) = happyShift action_54
action_33 (20) = happyShift action_55
action_33 (21) = happyShift action_56
action_33 (22) = happyShift action_57
action_33 (23) = happyShift action_58
action_33 (24) = happyShift action_59
action_33 (48) = happyShift action_83
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (52) = happyShift action_82
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_29

action_36 (12) = happyShift action_2
action_36 (13) = happyShift action_4
action_36 (14) = happyShift action_5
action_36 (15) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (17) = happyShift action_8
action_36 (25) = happyShift action_9
action_36 (28) = happyShift action_10
action_36 (29) = happyShift action_11
action_36 (30) = happyShift action_12
action_36 (31) = happyShift action_13
action_36 (32) = happyShift action_14
action_36 (33) = happyShift action_15
action_36 (34) = happyShift action_16
action_36 (35) = happyShift action_17
action_36 (36) = happyShift action_18
action_36 (37) = happyShift action_19
action_36 (38) = happyShift action_20
action_36 (39) = happyShift action_21
action_36 (40) = happyShift action_22
action_36 (41) = happyShift action_23
action_36 (42) = happyShift action_24
action_36 (43) = happyShift action_25
action_36 (47) = happyShift action_26
action_36 (49) = happyShift action_27
action_36 (51) = happyShift action_28
action_36 (52) = happyShift action_29
action_36 (53) = happyShift action_30
action_36 (4) = happyGoto action_81
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (12) = happyShift action_2
action_37 (13) = happyShift action_4
action_37 (14) = happyShift action_5
action_37 (15) = happyShift action_6
action_37 (16) = happyShift action_7
action_37 (17) = happyShift action_8
action_37 (18) = happyShift action_53
action_37 (19) = happyShift action_54
action_37 (20) = happyShift action_55
action_37 (21) = happyShift action_56
action_37 (22) = happyShift action_57
action_37 (23) = happyShift action_58
action_37 (24) = happyShift action_59
action_37 (25) = happyShift action_9
action_37 (28) = happyShift action_10
action_37 (29) = happyShift action_11
action_37 (30) = happyShift action_12
action_37 (31) = happyShift action_13
action_37 (32) = happyShift action_14
action_37 (33) = happyShift action_15
action_37 (34) = happyShift action_16
action_37 (35) = happyShift action_17
action_37 (36) = happyShift action_18
action_37 (37) = happyShift action_19
action_37 (38) = happyShift action_20
action_37 (39) = happyShift action_21
action_37 (40) = happyShift action_22
action_37 (41) = happyShift action_23
action_37 (42) = happyShift action_24
action_37 (43) = happyShift action_25
action_37 (47) = happyShift action_26
action_37 (49) = happyShift action_27
action_37 (51) = happyShift action_28
action_37 (52) = happyShift action_29
action_37 (53) = happyShift action_30
action_37 (4) = happyGoto action_80
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (12) = happyShift action_2
action_38 (13) = happyShift action_4
action_38 (14) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (16) = happyShift action_7
action_38 (17) = happyShift action_8
action_38 (18) = happyShift action_53
action_38 (19) = happyShift action_54
action_38 (20) = happyShift action_55
action_38 (21) = happyShift action_56
action_38 (22) = happyShift action_57
action_38 (23) = happyShift action_58
action_38 (24) = happyShift action_59
action_38 (25) = happyShift action_9
action_38 (28) = happyShift action_10
action_38 (29) = happyShift action_11
action_38 (30) = happyShift action_12
action_38 (31) = happyShift action_13
action_38 (32) = happyShift action_14
action_38 (33) = happyShift action_15
action_38 (34) = happyShift action_16
action_38 (35) = happyShift action_17
action_38 (36) = happyShift action_18
action_38 (37) = happyShift action_19
action_38 (38) = happyShift action_20
action_38 (39) = happyShift action_21
action_38 (40) = happyShift action_22
action_38 (41) = happyShift action_23
action_38 (42) = happyShift action_24
action_38 (43) = happyShift action_25
action_38 (47) = happyShift action_26
action_38 (49) = happyShift action_27
action_38 (51) = happyShift action_28
action_38 (52) = happyShift action_29
action_38 (53) = happyShift action_30
action_38 (4) = happyGoto action_79
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (12) = happyShift action_2
action_39 (13) = happyShift action_4
action_39 (14) = happyShift action_5
action_39 (15) = happyShift action_6
action_39 (16) = happyShift action_7
action_39 (17) = happyShift action_8
action_39 (25) = happyShift action_9
action_39 (28) = happyShift action_10
action_39 (29) = happyShift action_11
action_39 (30) = happyShift action_12
action_39 (31) = happyShift action_13
action_39 (32) = happyShift action_14
action_39 (33) = happyShift action_15
action_39 (34) = happyShift action_16
action_39 (35) = happyShift action_17
action_39 (36) = happyShift action_18
action_39 (37) = happyShift action_19
action_39 (38) = happyShift action_20
action_39 (39) = happyShift action_21
action_39 (40) = happyShift action_22
action_39 (41) = happyShift action_23
action_39 (42) = happyShift action_24
action_39 (43) = happyShift action_25
action_39 (47) = happyShift action_26
action_39 (49) = happyShift action_27
action_39 (51) = happyShift action_28
action_39 (52) = happyShift action_29
action_39 (53) = happyShift action_30
action_39 (4) = happyGoto action_78
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (12) = happyShift action_2
action_40 (13) = happyShift action_4
action_40 (14) = happyShift action_5
action_40 (15) = happyShift action_6
action_40 (16) = happyShift action_7
action_40 (17) = happyShift action_8
action_40 (25) = happyShift action_9
action_40 (28) = happyShift action_10
action_40 (29) = happyShift action_11
action_40 (30) = happyShift action_12
action_40 (31) = happyShift action_13
action_40 (32) = happyShift action_14
action_40 (33) = happyShift action_15
action_40 (34) = happyShift action_16
action_40 (35) = happyShift action_17
action_40 (36) = happyShift action_18
action_40 (37) = happyShift action_19
action_40 (38) = happyShift action_20
action_40 (39) = happyShift action_21
action_40 (40) = happyShift action_22
action_40 (41) = happyShift action_23
action_40 (42) = happyShift action_24
action_40 (43) = happyShift action_25
action_40 (47) = happyShift action_26
action_40 (49) = happyShift action_27
action_40 (51) = happyShift action_28
action_40 (52) = happyShift action_29
action_40 (53) = happyShift action_30
action_40 (4) = happyGoto action_77
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (12) = happyShift action_2
action_41 (13) = happyShift action_4
action_41 (14) = happyShift action_5
action_41 (15) = happyShift action_6
action_41 (16) = happyShift action_7
action_41 (17) = happyShift action_8
action_41 (25) = happyShift action_9
action_41 (28) = happyShift action_10
action_41 (29) = happyShift action_11
action_41 (30) = happyShift action_12
action_41 (31) = happyShift action_13
action_41 (32) = happyShift action_14
action_41 (33) = happyShift action_15
action_41 (34) = happyShift action_16
action_41 (35) = happyShift action_17
action_41 (36) = happyShift action_18
action_41 (37) = happyShift action_19
action_41 (38) = happyShift action_20
action_41 (39) = happyShift action_21
action_41 (40) = happyShift action_22
action_41 (41) = happyShift action_23
action_41 (42) = happyShift action_24
action_41 (43) = happyShift action_25
action_41 (47) = happyShift action_26
action_41 (49) = happyShift action_27
action_41 (51) = happyShift action_28
action_41 (52) = happyShift action_29
action_41 (53) = happyShift action_30
action_41 (4) = happyGoto action_76
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (18) = happyShift action_53
action_42 (19) = happyShift action_54
action_42 (20) = happyShift action_55
action_42 (21) = happyShift action_56
action_42 (22) = happyShift action_57
action_42 (23) = happyShift action_58
action_42 (24) = happyShift action_59
action_42 (47) = happyShift action_75
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (12) = happyShift action_2
action_43 (13) = happyShift action_4
action_43 (14) = happyShift action_5
action_43 (15) = happyShift action_6
action_43 (16) = happyShift action_7
action_43 (17) = happyShift action_8
action_43 (18) = happyShift action_53
action_43 (19) = happyShift action_54
action_43 (20) = happyShift action_55
action_43 (21) = happyShift action_56
action_43 (22) = happyShift action_57
action_43 (23) = happyShift action_58
action_43 (24) = happyShift action_59
action_43 (25) = happyShift action_9
action_43 (28) = happyShift action_10
action_43 (29) = happyShift action_11
action_43 (30) = happyShift action_12
action_43 (31) = happyShift action_13
action_43 (32) = happyShift action_14
action_43 (33) = happyShift action_15
action_43 (34) = happyShift action_16
action_43 (35) = happyShift action_17
action_43 (36) = happyShift action_18
action_43 (37) = happyShift action_19
action_43 (38) = happyShift action_20
action_43 (39) = happyShift action_21
action_43 (40) = happyShift action_22
action_43 (41) = happyShift action_23
action_43 (42) = happyShift action_24
action_43 (43) = happyShift action_25
action_43 (47) = happyShift action_26
action_43 (49) = happyShift action_27
action_43 (51) = happyShift action_28
action_43 (52) = happyShift action_29
action_43 (53) = happyShift action_30
action_43 (4) = happyGoto action_74
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_20

action_45 (12) = happyShift action_2
action_45 (13) = happyShift action_4
action_45 (14) = happyShift action_5
action_45 (15) = happyShift action_6
action_45 (16) = happyShift action_7
action_45 (17) = happyShift action_8
action_45 (18) = happyShift action_53
action_45 (19) = happyShift action_54
action_45 (20) = happyShift action_55
action_45 (21) = happyShift action_56
action_45 (22) = happyShift action_57
action_45 (23) = happyShift action_58
action_45 (24) = happyShift action_59
action_45 (25) = happyShift action_9
action_45 (28) = happyShift action_10
action_45 (29) = happyShift action_11
action_45 (30) = happyShift action_12
action_45 (31) = happyShift action_13
action_45 (32) = happyShift action_14
action_45 (33) = happyShift action_15
action_45 (34) = happyShift action_16
action_45 (35) = happyShift action_17
action_45 (36) = happyShift action_18
action_45 (37) = happyShift action_19
action_45 (38) = happyShift action_20
action_45 (39) = happyShift action_21
action_45 (40) = happyShift action_22
action_45 (41) = happyShift action_23
action_45 (42) = happyShift action_24
action_45 (43) = happyShift action_25
action_45 (47) = happyShift action_26
action_45 (49) = happyShift action_27
action_45 (51) = happyShift action_28
action_45 (52) = happyShift action_29
action_45 (53) = happyShift action_30
action_45 (4) = happyGoto action_73
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (12) = happyShift action_2
action_46 (13) = happyShift action_4
action_46 (14) = happyShift action_5
action_46 (15) = happyShift action_6
action_46 (16) = happyShift action_7
action_46 (17) = happyShift action_8
action_46 (18) = happyShift action_53
action_46 (19) = happyShift action_54
action_46 (20) = happyShift action_55
action_46 (21) = happyShift action_56
action_46 (22) = happyShift action_57
action_46 (23) = happyShift action_58
action_46 (24) = happyShift action_59
action_46 (25) = happyShift action_9
action_46 (28) = happyShift action_10
action_46 (29) = happyShift action_11
action_46 (30) = happyShift action_12
action_46 (31) = happyShift action_13
action_46 (32) = happyShift action_14
action_46 (33) = happyShift action_15
action_46 (34) = happyShift action_16
action_46 (35) = happyShift action_17
action_46 (36) = happyShift action_18
action_46 (37) = happyShift action_19
action_46 (38) = happyShift action_20
action_46 (39) = happyShift action_21
action_46 (40) = happyShift action_22
action_46 (41) = happyShift action_23
action_46 (42) = happyShift action_24
action_46 (43) = happyShift action_25
action_46 (47) = happyShift action_26
action_46 (49) = happyShift action_27
action_46 (51) = happyShift action_28
action_46 (52) = happyShift action_29
action_46 (53) = happyShift action_30
action_46 (4) = happyGoto action_72
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (12) = happyShift action_2
action_47 (13) = happyShift action_4
action_47 (14) = happyShift action_5
action_47 (15) = happyShift action_6
action_47 (16) = happyShift action_7
action_47 (17) = happyShift action_8
action_47 (18) = happyShift action_53
action_47 (19) = happyShift action_54
action_47 (20) = happyShift action_55
action_47 (21) = happyShift action_56
action_47 (22) = happyShift action_57
action_47 (23) = happyShift action_58
action_47 (24) = happyShift action_59
action_47 (25) = happyShift action_9
action_47 (28) = happyShift action_10
action_47 (29) = happyShift action_11
action_47 (30) = happyShift action_12
action_47 (31) = happyShift action_13
action_47 (32) = happyShift action_14
action_47 (33) = happyShift action_15
action_47 (34) = happyShift action_16
action_47 (35) = happyShift action_17
action_47 (36) = happyShift action_18
action_47 (37) = happyShift action_19
action_47 (38) = happyShift action_20
action_47 (39) = happyShift action_21
action_47 (40) = happyShift action_22
action_47 (41) = happyShift action_23
action_47 (42) = happyShift action_24
action_47 (43) = happyShift action_25
action_47 (47) = happyShift action_26
action_47 (49) = happyShift action_27
action_47 (51) = happyShift action_28
action_47 (52) = happyShift action_29
action_47 (53) = happyShift action_30
action_47 (4) = happyGoto action_71
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (12) = happyShift action_2
action_48 (13) = happyShift action_4
action_48 (14) = happyShift action_5
action_48 (15) = happyShift action_6
action_48 (16) = happyShift action_7
action_48 (17) = happyShift action_8
action_48 (18) = happyShift action_53
action_48 (19) = happyShift action_54
action_48 (20) = happyShift action_55
action_48 (21) = happyShift action_56
action_48 (22) = happyShift action_57
action_48 (23) = happyShift action_58
action_48 (24) = happyShift action_59
action_48 (25) = happyShift action_9
action_48 (28) = happyShift action_10
action_48 (29) = happyShift action_11
action_48 (30) = happyShift action_12
action_48 (31) = happyShift action_13
action_48 (32) = happyShift action_14
action_48 (33) = happyShift action_15
action_48 (34) = happyShift action_16
action_48 (35) = happyShift action_17
action_48 (36) = happyShift action_18
action_48 (37) = happyShift action_19
action_48 (38) = happyShift action_20
action_48 (39) = happyShift action_21
action_48 (40) = happyShift action_22
action_48 (41) = happyShift action_23
action_48 (42) = happyShift action_24
action_48 (43) = happyShift action_25
action_48 (47) = happyShift action_26
action_48 (49) = happyShift action_27
action_48 (51) = happyShift action_28
action_48 (52) = happyShift action_29
action_48 (53) = happyShift action_30
action_48 (4) = happyGoto action_70
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (12) = happyShift action_2
action_49 (13) = happyShift action_4
action_49 (14) = happyShift action_5
action_49 (15) = happyShift action_6
action_49 (16) = happyShift action_7
action_49 (17) = happyShift action_8
action_49 (25) = happyShift action_9
action_49 (28) = happyShift action_10
action_49 (29) = happyShift action_11
action_49 (30) = happyShift action_12
action_49 (31) = happyShift action_13
action_49 (32) = happyShift action_14
action_49 (33) = happyShift action_15
action_49 (34) = happyShift action_16
action_49 (35) = happyShift action_17
action_49 (36) = happyShift action_18
action_49 (37) = happyShift action_19
action_49 (38) = happyShift action_20
action_49 (39) = happyShift action_21
action_49 (40) = happyShift action_22
action_49 (41) = happyShift action_23
action_49 (42) = happyShift action_24
action_49 (43) = happyShift action_25
action_49 (47) = happyShift action_26
action_49 (49) = happyShift action_27
action_49 (51) = happyShift action_28
action_49 (52) = happyShift action_29
action_49 (53) = happyShift action_30
action_49 (4) = happyGoto action_69
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (18) = happyShift action_53
action_50 (19) = happyShift action_54
action_50 (20) = happyShift action_55
action_50 (21) = happyShift action_56
action_50 (22) = happyShift action_57
action_50 (23) = happyShift action_58
action_50 (24) = happyShift action_59
action_50 (26) = happyShift action_68
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (18) = happyShift action_53
action_51 (19) = happyShift action_54
action_51 (20) = happyShift action_55
action_51 (21) = happyShift action_56
action_51 (22) = happyShift action_57
action_51 (23) = happyShift action_58
action_51 (24) = happyShift action_59
action_51 _ = happyReduce_8

action_52 (12) = happyShift action_2
action_52 (13) = happyShift action_4
action_52 (14) = happyShift action_5
action_52 (15) = happyShift action_6
action_52 (16) = happyShift action_7
action_52 (17) = happyShift action_8
action_52 (18) = happyShift action_53
action_52 (19) = happyShift action_54
action_52 (20) = happyShift action_55
action_52 (21) = happyShift action_56
action_52 (22) = happyShift action_57
action_52 (23) = happyShift action_58
action_52 (24) = happyShift action_59
action_52 (25) = happyShift action_9
action_52 (28) = happyShift action_10
action_52 (29) = happyShift action_11
action_52 (30) = happyShift action_12
action_52 (31) = happyShift action_13
action_52 (32) = happyShift action_14
action_52 (33) = happyShift action_15
action_52 (34) = happyShift action_16
action_52 (35) = happyShift action_17
action_52 (36) = happyShift action_18
action_52 (37) = happyShift action_19
action_52 (38) = happyShift action_20
action_52 (39) = happyShift action_21
action_52 (40) = happyShift action_22
action_52 (41) = happyShift action_23
action_52 (42) = happyShift action_24
action_52 (43) = happyShift action_25
action_52 (47) = happyShift action_26
action_52 (49) = happyShift action_27
action_52 (51) = happyShift action_28
action_52 (52) = happyShift action_29
action_52 (53) = happyShift action_30
action_52 (4) = happyGoto action_67
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_2
action_53 (13) = happyShift action_4
action_53 (14) = happyShift action_5
action_53 (15) = happyShift action_6
action_53 (16) = happyShift action_7
action_53 (17) = happyShift action_8
action_53 (25) = happyShift action_9
action_53 (28) = happyShift action_10
action_53 (29) = happyShift action_11
action_53 (30) = happyShift action_12
action_53 (31) = happyShift action_13
action_53 (32) = happyShift action_14
action_53 (33) = happyShift action_15
action_53 (34) = happyShift action_16
action_53 (35) = happyShift action_17
action_53 (36) = happyShift action_18
action_53 (37) = happyShift action_19
action_53 (38) = happyShift action_20
action_53 (39) = happyShift action_21
action_53 (40) = happyShift action_22
action_53 (41) = happyShift action_23
action_53 (42) = happyShift action_24
action_53 (43) = happyShift action_25
action_53 (47) = happyShift action_26
action_53 (49) = happyShift action_27
action_53 (51) = happyShift action_28
action_53 (52) = happyShift action_29
action_53 (53) = happyShift action_30
action_53 (4) = happyGoto action_66
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (12) = happyShift action_2
action_54 (13) = happyShift action_4
action_54 (14) = happyShift action_5
action_54 (15) = happyShift action_6
action_54 (16) = happyShift action_7
action_54 (17) = happyShift action_8
action_54 (25) = happyShift action_9
action_54 (28) = happyShift action_10
action_54 (29) = happyShift action_11
action_54 (30) = happyShift action_12
action_54 (31) = happyShift action_13
action_54 (32) = happyShift action_14
action_54 (33) = happyShift action_15
action_54 (34) = happyShift action_16
action_54 (35) = happyShift action_17
action_54 (36) = happyShift action_18
action_54 (37) = happyShift action_19
action_54 (38) = happyShift action_20
action_54 (39) = happyShift action_21
action_54 (40) = happyShift action_22
action_54 (41) = happyShift action_23
action_54 (42) = happyShift action_24
action_54 (43) = happyShift action_25
action_54 (47) = happyShift action_26
action_54 (49) = happyShift action_27
action_54 (51) = happyShift action_28
action_54 (52) = happyShift action_29
action_54 (53) = happyShift action_30
action_54 (4) = happyGoto action_65
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (12) = happyShift action_2
action_55 (13) = happyShift action_4
action_55 (14) = happyShift action_5
action_55 (15) = happyShift action_6
action_55 (16) = happyShift action_7
action_55 (17) = happyShift action_8
action_55 (25) = happyShift action_9
action_55 (28) = happyShift action_10
action_55 (29) = happyShift action_11
action_55 (30) = happyShift action_12
action_55 (31) = happyShift action_13
action_55 (32) = happyShift action_14
action_55 (33) = happyShift action_15
action_55 (34) = happyShift action_16
action_55 (35) = happyShift action_17
action_55 (36) = happyShift action_18
action_55 (37) = happyShift action_19
action_55 (38) = happyShift action_20
action_55 (39) = happyShift action_21
action_55 (40) = happyShift action_22
action_55 (41) = happyShift action_23
action_55 (42) = happyShift action_24
action_55 (43) = happyShift action_25
action_55 (47) = happyShift action_26
action_55 (49) = happyShift action_27
action_55 (51) = happyShift action_28
action_55 (52) = happyShift action_29
action_55 (53) = happyShift action_30
action_55 (4) = happyGoto action_64
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (12) = happyShift action_2
action_56 (13) = happyShift action_4
action_56 (14) = happyShift action_5
action_56 (15) = happyShift action_6
action_56 (16) = happyShift action_7
action_56 (17) = happyShift action_8
action_56 (25) = happyShift action_9
action_56 (28) = happyShift action_10
action_56 (29) = happyShift action_11
action_56 (30) = happyShift action_12
action_56 (31) = happyShift action_13
action_56 (32) = happyShift action_14
action_56 (33) = happyShift action_15
action_56 (34) = happyShift action_16
action_56 (35) = happyShift action_17
action_56 (36) = happyShift action_18
action_56 (37) = happyShift action_19
action_56 (38) = happyShift action_20
action_56 (39) = happyShift action_21
action_56 (40) = happyShift action_22
action_56 (41) = happyShift action_23
action_56 (42) = happyShift action_24
action_56 (43) = happyShift action_25
action_56 (47) = happyShift action_26
action_56 (49) = happyShift action_27
action_56 (51) = happyShift action_28
action_56 (52) = happyShift action_29
action_56 (53) = happyShift action_30
action_56 (4) = happyGoto action_63
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (12) = happyShift action_2
action_57 (13) = happyShift action_4
action_57 (14) = happyShift action_5
action_57 (15) = happyShift action_6
action_57 (16) = happyShift action_7
action_57 (17) = happyShift action_8
action_57 (25) = happyShift action_9
action_57 (28) = happyShift action_10
action_57 (29) = happyShift action_11
action_57 (30) = happyShift action_12
action_57 (31) = happyShift action_13
action_57 (32) = happyShift action_14
action_57 (33) = happyShift action_15
action_57 (34) = happyShift action_16
action_57 (35) = happyShift action_17
action_57 (36) = happyShift action_18
action_57 (37) = happyShift action_19
action_57 (38) = happyShift action_20
action_57 (39) = happyShift action_21
action_57 (40) = happyShift action_22
action_57 (41) = happyShift action_23
action_57 (42) = happyShift action_24
action_57 (43) = happyShift action_25
action_57 (47) = happyShift action_26
action_57 (49) = happyShift action_27
action_57 (51) = happyShift action_28
action_57 (52) = happyShift action_29
action_57 (53) = happyShift action_30
action_57 (4) = happyGoto action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_2
action_58 (13) = happyShift action_4
action_58 (14) = happyShift action_5
action_58 (15) = happyShift action_6
action_58 (16) = happyShift action_7
action_58 (17) = happyShift action_8
action_58 (25) = happyShift action_9
action_58 (28) = happyShift action_10
action_58 (29) = happyShift action_11
action_58 (30) = happyShift action_12
action_58 (31) = happyShift action_13
action_58 (32) = happyShift action_14
action_58 (33) = happyShift action_15
action_58 (34) = happyShift action_16
action_58 (35) = happyShift action_17
action_58 (36) = happyShift action_18
action_58 (37) = happyShift action_19
action_58 (38) = happyShift action_20
action_58 (39) = happyShift action_21
action_58 (40) = happyShift action_22
action_58 (41) = happyShift action_23
action_58 (42) = happyShift action_24
action_58 (43) = happyShift action_25
action_58 (47) = happyShift action_26
action_58 (49) = happyShift action_27
action_58 (51) = happyShift action_28
action_58 (52) = happyShift action_29
action_58 (53) = happyShift action_30
action_58 (4) = happyGoto action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_2
action_59 (13) = happyShift action_4
action_59 (14) = happyShift action_5
action_59 (15) = happyShift action_6
action_59 (16) = happyShift action_7
action_59 (17) = happyShift action_8
action_59 (25) = happyShift action_9
action_59 (28) = happyShift action_10
action_59 (29) = happyShift action_11
action_59 (30) = happyShift action_12
action_59 (31) = happyShift action_13
action_59 (32) = happyShift action_14
action_59 (33) = happyShift action_15
action_59 (34) = happyShift action_16
action_59 (35) = happyShift action_17
action_59 (36) = happyShift action_18
action_59 (37) = happyShift action_19
action_59 (38) = happyShift action_20
action_59 (39) = happyShift action_21
action_59 (40) = happyShift action_22
action_59 (41) = happyShift action_23
action_59 (42) = happyShift action_24
action_59 (43) = happyShift action_25
action_59 (47) = happyShift action_26
action_59 (49) = happyShift action_27
action_59 (51) = happyShift action_28
action_59 (52) = happyShift action_29
action_59 (53) = happyShift action_30
action_59 (4) = happyGoto action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (18) = happyShift action_53
action_60 (19) = happyShift action_54
action_60 (20) = happyShift action_55
action_60 (21) = happyShift action_56
action_60 (22) = happyShift action_57
action_60 (23) = happyShift action_58
action_60 _ = happyReduce_35

action_61 _ = happyReduce_14

action_62 _ = happyReduce_13

action_63 (18) = happyFail []
action_63 (19) = happyFail []
action_63 (20) = happyFail []
action_63 (21) = happyFail []
action_63 (22) = happyShift action_57
action_63 (23) = happyShift action_58
action_63 _ = happyReduce_12

action_64 (18) = happyFail []
action_64 (19) = happyFail []
action_64 (20) = happyFail []
action_64 (21) = happyFail []
action_64 (22) = happyShift action_57
action_64 (23) = happyShift action_58
action_64 _ = happyReduce_11

action_65 (18) = happyFail []
action_65 (19) = happyFail []
action_65 (20) = happyFail []
action_65 (21) = happyFail []
action_65 (22) = happyShift action_57
action_65 (23) = happyShift action_58
action_65 _ = happyReduce_10

action_66 (18) = happyFail []
action_66 (19) = happyFail []
action_66 (20) = happyFail []
action_66 (21) = happyFail []
action_66 (22) = happyShift action_57
action_66 (23) = happyShift action_58
action_66 _ = happyReduce_9

action_67 (18) = happyShift action_53
action_67 (19) = happyShift action_54
action_67 (20) = happyShift action_55
action_67 (21) = happyShift action_56
action_67 (22) = happyShift action_57
action_67 (23) = happyShift action_58
action_67 (24) = happyShift action_59
action_67 _ = happyReduce_7

action_68 (12) = happyShift action_2
action_68 (13) = happyShift action_4
action_68 (14) = happyShift action_5
action_68 (15) = happyShift action_6
action_68 (16) = happyShift action_7
action_68 (17) = happyShift action_8
action_68 (25) = happyShift action_9
action_68 (28) = happyShift action_10
action_68 (29) = happyShift action_11
action_68 (30) = happyShift action_12
action_68 (31) = happyShift action_13
action_68 (32) = happyShift action_14
action_68 (33) = happyShift action_15
action_68 (34) = happyShift action_16
action_68 (35) = happyShift action_17
action_68 (36) = happyShift action_18
action_68 (37) = happyShift action_19
action_68 (38) = happyShift action_20
action_68 (39) = happyShift action_21
action_68 (40) = happyShift action_22
action_68 (41) = happyShift action_23
action_68 (42) = happyShift action_24
action_68 (43) = happyShift action_25
action_68 (47) = happyShift action_26
action_68 (49) = happyShift action_27
action_68 (51) = happyShift action_28
action_68 (52) = happyShift action_29
action_68 (53) = happyShift action_30
action_68 (4) = happyGoto action_94
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (18) = happyShift action_53
action_69 (19) = happyShift action_54
action_69 (20) = happyShift action_55
action_69 (21) = happyShift action_56
action_69 (22) = happyShift action_57
action_69 (23) = happyShift action_58
action_69 (24) = happyShift action_59
action_69 (48) = happyShift action_93
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_16

action_71 _ = happyReduce_17

action_72 _ = happyReduce_18

action_73 _ = happyReduce_19

action_74 _ = happyReduce_21

action_75 (12) = happyShift action_2
action_75 (13) = happyShift action_4
action_75 (14) = happyShift action_5
action_75 (15) = happyShift action_6
action_75 (16) = happyShift action_7
action_75 (17) = happyShift action_8
action_75 (25) = happyShift action_9
action_75 (28) = happyShift action_10
action_75 (29) = happyShift action_11
action_75 (30) = happyShift action_12
action_75 (31) = happyShift action_13
action_75 (32) = happyShift action_14
action_75 (33) = happyShift action_15
action_75 (34) = happyShift action_16
action_75 (35) = happyShift action_17
action_75 (36) = happyShift action_18
action_75 (37) = happyShift action_19
action_75 (38) = happyShift action_20
action_75 (39) = happyShift action_21
action_75 (40) = happyShift action_22
action_75 (41) = happyShift action_23
action_75 (42) = happyShift action_24
action_75 (43) = happyShift action_25
action_75 (47) = happyShift action_26
action_75 (49) = happyShift action_27
action_75 (51) = happyShift action_28
action_75 (52) = happyShift action_29
action_75 (53) = happyShift action_30
action_75 (4) = happyGoto action_92
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (18) = happyShift action_53
action_76 (19) = happyShift action_54
action_76 (20) = happyShift action_55
action_76 (21) = happyShift action_56
action_76 (22) = happyShift action_57
action_76 (23) = happyShift action_58
action_76 (24) = happyShift action_59
action_76 (48) = happyShift action_91
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (18) = happyShift action_53
action_77 (19) = happyShift action_54
action_77 (20) = happyShift action_55
action_77 (21) = happyShift action_56
action_77 (22) = happyShift action_57
action_77 (23) = happyShift action_58
action_77 (24) = happyShift action_59
action_77 (48) = happyShift action_90
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (18) = happyShift action_53
action_78 (19) = happyShift action_54
action_78 (20) = happyShift action_55
action_78 (21) = happyShift action_56
action_78 (22) = happyShift action_57
action_78 (23) = happyShift action_58
action_78 (24) = happyShift action_59
action_78 (48) = happyShift action_89
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_26

action_80 _ = happyReduce_27

action_81 (18) = happyShift action_53
action_81 (19) = happyShift action_54
action_81 (20) = happyShift action_55
action_81 (21) = happyShift action_56
action_81 (22) = happyShift action_57
action_81 (23) = happyShift action_58
action_81 (24) = happyShift action_88
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (44) = happyShift action_87
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_33

action_84 _ = happyReduce_34

action_85 (18) = happyShift action_53
action_85 (19) = happyShift action_54
action_85 (20) = happyShift action_55
action_85 (21) = happyShift action_56
action_85 (22) = happyShift action_57
action_85 (23) = happyShift action_58
action_85 (24) = happyShift action_59
action_85 (54) = happyShift action_86
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (55) = happyShift action_108
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (6) = happyShift action_102
action_87 (7) = happyShift action_103
action_87 (8) = happyShift action_104
action_87 (9) = happyShift action_105
action_87 (10) = happyShift action_106
action_87 (11) = happyShift action_107
action_87 (5) = happyGoto action_101
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (12) = happyShift action_2
action_88 (13) = happyShift action_4
action_88 (14) = happyShift action_5
action_88 (15) = happyShift action_6
action_88 (16) = happyShift action_7
action_88 (17) = happyShift action_8
action_88 (25) = happyShift action_9
action_88 (28) = happyShift action_10
action_88 (29) = happyShift action_11
action_88 (30) = happyShift action_12
action_88 (31) = happyShift action_13
action_88 (32) = happyShift action_14
action_88 (33) = happyShift action_15
action_88 (34) = happyShift action_16
action_88 (35) = happyShift action_17
action_88 (36) = happyShift action_18
action_88 (37) = happyShift action_19
action_88 (38) = happyShift action_20
action_88 (39) = happyShift action_21
action_88 (40) = happyShift action_22
action_88 (41) = happyShift action_23
action_88 (42) = happyShift action_24
action_88 (43) = happyShift action_25
action_88 (47) = happyShift action_26
action_88 (49) = happyShift action_27
action_88 (51) = happyShift action_28
action_88 (52) = happyShift action_29
action_88 (53) = happyShift action_30
action_88 (4) = happyGoto action_100
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (47) = happyShift action_99
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (47) = happyShift action_98
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (47) = happyShift action_97
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (18) = happyShift action_53
action_92 (19) = happyShift action_54
action_92 (20) = happyShift action_55
action_92 (21) = happyShift action_56
action_92 (22) = happyShift action_57
action_92 (23) = happyShift action_58
action_92 (24) = happyShift action_96
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_15

action_94 (18) = happyShift action_53
action_94 (19) = happyShift action_54
action_94 (20) = happyShift action_55
action_94 (21) = happyShift action_56
action_94 (22) = happyShift action_57
action_94 (23) = happyShift action_58
action_94 (24) = happyShift action_59
action_94 (27) = happyShift action_95
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (12) = happyShift action_2
action_95 (13) = happyShift action_4
action_95 (14) = happyShift action_5
action_95 (15) = happyShift action_6
action_95 (16) = happyShift action_7
action_95 (17) = happyShift action_8
action_95 (25) = happyShift action_9
action_95 (28) = happyShift action_10
action_95 (29) = happyShift action_11
action_95 (30) = happyShift action_12
action_95 (31) = happyShift action_13
action_95 (32) = happyShift action_14
action_95 (33) = happyShift action_15
action_95 (34) = happyShift action_16
action_95 (35) = happyShift action_17
action_95 (36) = happyShift action_18
action_95 (37) = happyShift action_19
action_95 (38) = happyShift action_20
action_95 (39) = happyShift action_21
action_95 (40) = happyShift action_22
action_95 (41) = happyShift action_23
action_95 (42) = happyShift action_24
action_95 (43) = happyShift action_25
action_95 (47) = happyShift action_26
action_95 (49) = happyShift action_27
action_95 (51) = happyShift action_28
action_95 (52) = happyShift action_29
action_95 (53) = happyShift action_30
action_95 (4) = happyGoto action_118
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (12) = happyShift action_2
action_96 (13) = happyShift action_4
action_96 (14) = happyShift action_5
action_96 (15) = happyShift action_6
action_96 (16) = happyShift action_7
action_96 (17) = happyShift action_8
action_96 (25) = happyShift action_9
action_96 (28) = happyShift action_10
action_96 (29) = happyShift action_11
action_96 (30) = happyShift action_12
action_96 (31) = happyShift action_13
action_96 (32) = happyShift action_14
action_96 (33) = happyShift action_15
action_96 (34) = happyShift action_16
action_96 (35) = happyShift action_17
action_96 (36) = happyShift action_18
action_96 (37) = happyShift action_19
action_96 (38) = happyShift action_20
action_96 (39) = happyShift action_21
action_96 (40) = happyShift action_22
action_96 (41) = happyShift action_23
action_96 (42) = happyShift action_24
action_96 (43) = happyShift action_25
action_96 (47) = happyShift action_26
action_96 (49) = happyShift action_27
action_96 (51) = happyShift action_28
action_96 (52) = happyShift action_29
action_96 (53) = happyShift action_30
action_96 (4) = happyGoto action_117
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (12) = happyShift action_2
action_97 (13) = happyShift action_4
action_97 (14) = happyShift action_5
action_97 (15) = happyShift action_6
action_97 (16) = happyShift action_7
action_97 (17) = happyShift action_8
action_97 (25) = happyShift action_9
action_97 (28) = happyShift action_10
action_97 (29) = happyShift action_11
action_97 (30) = happyShift action_12
action_97 (31) = happyShift action_13
action_97 (32) = happyShift action_14
action_97 (33) = happyShift action_15
action_97 (34) = happyShift action_16
action_97 (35) = happyShift action_17
action_97 (36) = happyShift action_18
action_97 (37) = happyShift action_19
action_97 (38) = happyShift action_20
action_97 (39) = happyShift action_21
action_97 (40) = happyShift action_22
action_97 (41) = happyShift action_23
action_97 (42) = happyShift action_24
action_97 (43) = happyShift action_25
action_97 (47) = happyShift action_26
action_97 (49) = happyShift action_27
action_97 (51) = happyShift action_28
action_97 (52) = happyShift action_29
action_97 (53) = happyShift action_30
action_97 (4) = happyGoto action_116
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (12) = happyShift action_2
action_98 (13) = happyShift action_4
action_98 (14) = happyShift action_5
action_98 (15) = happyShift action_6
action_98 (16) = happyShift action_7
action_98 (17) = happyShift action_8
action_98 (25) = happyShift action_9
action_98 (28) = happyShift action_10
action_98 (29) = happyShift action_11
action_98 (30) = happyShift action_12
action_98 (31) = happyShift action_13
action_98 (32) = happyShift action_14
action_98 (33) = happyShift action_15
action_98 (34) = happyShift action_16
action_98 (35) = happyShift action_17
action_98 (36) = happyShift action_18
action_98 (37) = happyShift action_19
action_98 (38) = happyShift action_20
action_98 (39) = happyShift action_21
action_98 (40) = happyShift action_22
action_98 (41) = happyShift action_23
action_98 (42) = happyShift action_24
action_98 (43) = happyShift action_25
action_98 (47) = happyShift action_26
action_98 (49) = happyShift action_27
action_98 (51) = happyShift action_28
action_98 (52) = happyShift action_29
action_98 (53) = happyShift action_30
action_98 (4) = happyGoto action_115
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (12) = happyShift action_2
action_99 (13) = happyShift action_4
action_99 (14) = happyShift action_5
action_99 (15) = happyShift action_6
action_99 (16) = happyShift action_7
action_99 (17) = happyShift action_8
action_99 (25) = happyShift action_9
action_99 (28) = happyShift action_10
action_99 (29) = happyShift action_11
action_99 (30) = happyShift action_12
action_99 (31) = happyShift action_13
action_99 (32) = happyShift action_14
action_99 (33) = happyShift action_15
action_99 (34) = happyShift action_16
action_99 (35) = happyShift action_17
action_99 (36) = happyShift action_18
action_99 (37) = happyShift action_19
action_99 (38) = happyShift action_20
action_99 (39) = happyShift action_21
action_99 (40) = happyShift action_22
action_99 (41) = happyShift action_23
action_99 (42) = happyShift action_24
action_99 (43) = happyShift action_25
action_99 (47) = happyShift action_26
action_99 (49) = happyShift action_27
action_99 (51) = happyShift action_28
action_99 (52) = happyShift action_29
action_99 (53) = happyShift action_30
action_99 (4) = happyGoto action_114
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (18) = happyShift action_53
action_100 (19) = happyShift action_54
action_100 (20) = happyShift action_55
action_100 (21) = happyShift action_56
action_100 (22) = happyShift action_57
action_100 (23) = happyShift action_58
action_100 (48) = happyShift action_113
action_100 _ = happyReduce_35

action_101 (24) = happyShift action_111
action_101 (48) = happyShift action_112
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_37

action_103 _ = happyReduce_38

action_104 _ = happyReduce_39

action_105 (6) = happyShift action_102
action_105 (7) = happyShift action_103
action_105 (8) = happyShift action_104
action_105 (9) = happyShift action_105
action_105 (10) = happyShift action_106
action_105 (11) = happyShift action_107
action_105 (5) = happyGoto action_110
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_36

action_107 _ = happyReduce_42

action_108 (24) = happyShift action_109
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (56) = happyShift action_126
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (24) = happyShift action_111
action_110 _ = happyReduce_40

action_111 (6) = happyShift action_102
action_111 (7) = happyShift action_103
action_111 (8) = happyShift action_104
action_111 (9) = happyShift action_105
action_111 (10) = happyShift action_106
action_111 (11) = happyShift action_107
action_111 (5) = happyGoto action_125
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (45) = happyShift action_124
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (12) = happyShift action_2
action_113 (13) = happyShift action_4
action_113 (14) = happyShift action_5
action_113 (15) = happyShift action_6
action_113 (16) = happyShift action_7
action_113 (17) = happyShift action_8
action_113 (25) = happyShift action_9
action_113 (28) = happyShift action_10
action_113 (29) = happyShift action_11
action_113 (30) = happyShift action_12
action_113 (31) = happyShift action_13
action_113 (32) = happyShift action_14
action_113 (33) = happyShift action_15
action_113 (34) = happyShift action_16
action_113 (35) = happyShift action_17
action_113 (36) = happyShift action_18
action_113 (37) = happyShift action_19
action_113 (38) = happyShift action_20
action_113 (39) = happyShift action_21
action_113 (40) = happyShift action_22
action_113 (41) = happyShift action_23
action_113 (42) = happyShift action_24
action_113 (43) = happyShift action_25
action_113 (47) = happyShift action_26
action_113 (49) = happyShift action_27
action_113 (51) = happyShift action_28
action_113 (52) = happyShift action_29
action_113 (53) = happyShift action_30
action_113 (4) = happyGoto action_123
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (18) = happyShift action_53
action_114 (19) = happyShift action_54
action_114 (20) = happyShift action_55
action_114 (21) = happyShift action_56
action_114 (22) = happyShift action_57
action_114 (23) = happyShift action_58
action_114 (24) = happyShift action_59
action_114 (48) = happyShift action_122
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (18) = happyShift action_53
action_115 (19) = happyShift action_54
action_115 (20) = happyShift action_55
action_115 (21) = happyShift action_56
action_115 (22) = happyShift action_57
action_115 (23) = happyShift action_58
action_115 (24) = happyShift action_59
action_115 (48) = happyShift action_121
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (18) = happyShift action_53
action_116 (19) = happyShift action_54
action_116 (20) = happyShift action_55
action_116 (21) = happyShift action_56
action_116 (22) = happyShift action_57
action_116 (23) = happyShift action_58
action_116 (24) = happyShift action_59
action_116 (48) = happyShift action_120
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (18) = happyShift action_53
action_117 (19) = happyShift action_54
action_117 (20) = happyShift action_55
action_117 (21) = happyShift action_56
action_117 (22) = happyShift action_57
action_117 (23) = happyShift action_58
action_117 (48) = happyShift action_119
action_117 _ = happyReduce_35

action_118 (18) = happyShift action_53
action_118 (19) = happyShift action_54
action_118 (20) = happyShift action_55
action_118 (21) = happyShift action_56
action_118 (22) = happyShift action_57
action_118 (23) = happyShift action_58
action_118 (24) = happyShift action_59
action_118 _ = happyReduce_31

action_119 (12) = happyShift action_2
action_119 (13) = happyShift action_4
action_119 (14) = happyShift action_5
action_119 (15) = happyShift action_6
action_119 (16) = happyShift action_7
action_119 (17) = happyShift action_8
action_119 (25) = happyShift action_9
action_119 (28) = happyShift action_10
action_119 (29) = happyShift action_11
action_119 (30) = happyShift action_12
action_119 (31) = happyShift action_13
action_119 (32) = happyShift action_14
action_119 (33) = happyShift action_15
action_119 (34) = happyShift action_16
action_119 (35) = happyShift action_17
action_119 (36) = happyShift action_18
action_119 (37) = happyShift action_19
action_119 (38) = happyShift action_20
action_119 (39) = happyShift action_21
action_119 (40) = happyShift action_22
action_119 (41) = happyShift action_23
action_119 (42) = happyShift action_24
action_119 (43) = happyShift action_25
action_119 (47) = happyShift action_26
action_119 (49) = happyShift action_27
action_119 (51) = happyShift action_28
action_119 (52) = happyShift action_29
action_119 (53) = happyShift action_30
action_119 (4) = happyGoto action_131
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (47) = happyShift action_130
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_24

action_122 _ = happyReduce_25

action_123 (12) = happyShift action_2
action_123 (13) = happyShift action_4
action_123 (14) = happyShift action_5
action_123 (15) = happyShift action_6
action_123 (16) = happyShift action_7
action_123 (17) = happyShift action_8
action_123 (18) = happyShift action_53
action_123 (19) = happyShift action_54
action_123 (20) = happyShift action_55
action_123 (21) = happyShift action_56
action_123 (22) = happyShift action_57
action_123 (23) = happyShift action_58
action_123 (24) = happyShift action_59
action_123 (25) = happyShift action_9
action_123 (28) = happyShift action_10
action_123 (29) = happyShift action_11
action_123 (30) = happyShift action_12
action_123 (31) = happyShift action_13
action_123 (32) = happyShift action_14
action_123 (33) = happyShift action_15
action_123 (34) = happyShift action_16
action_123 (35) = happyShift action_17
action_123 (36) = happyShift action_18
action_123 (37) = happyShift action_19
action_123 (38) = happyShift action_20
action_123 (39) = happyShift action_21
action_123 (40) = happyShift action_22
action_123 (41) = happyShift action_23
action_123 (42) = happyShift action_24
action_123 (43) = happyShift action_25
action_123 (47) = happyShift action_26
action_123 (49) = happyShift action_27
action_123 (51) = happyShift action_28
action_123 (52) = happyShift action_29
action_123 (53) = happyShift action_30
action_123 (4) = happyGoto action_129
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (12) = happyShift action_2
action_124 (13) = happyShift action_4
action_124 (14) = happyShift action_5
action_124 (15) = happyShift action_6
action_124 (16) = happyShift action_7
action_124 (17) = happyShift action_8
action_124 (25) = happyShift action_9
action_124 (28) = happyShift action_10
action_124 (29) = happyShift action_11
action_124 (30) = happyShift action_12
action_124 (31) = happyShift action_13
action_124 (32) = happyShift action_14
action_124 (33) = happyShift action_15
action_124 (34) = happyShift action_16
action_124 (35) = happyShift action_17
action_124 (36) = happyShift action_18
action_124 (37) = happyShift action_19
action_124 (38) = happyShift action_20
action_124 (39) = happyShift action_21
action_124 (40) = happyShift action_22
action_124 (41) = happyShift action_23
action_124 (42) = happyShift action_24
action_124 (43) = happyShift action_25
action_124 (47) = happyShift action_26
action_124 (49) = happyShift action_27
action_124 (51) = happyShift action_28
action_124 (52) = happyShift action_29
action_124 (53) = happyShift action_30
action_124 (4) = happyGoto action_128
action_124 _ = happyFail (happyExpListPerState 124)

action_125 _ = happyReduce_41

action_126 (48) = happyShift action_127
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (12) = happyShift action_2
action_127 (13) = happyShift action_4
action_127 (14) = happyShift action_5
action_127 (15) = happyShift action_6
action_127 (16) = happyShift action_7
action_127 (17) = happyShift action_8
action_127 (25) = happyShift action_9
action_127 (28) = happyShift action_10
action_127 (29) = happyShift action_11
action_127 (30) = happyShift action_12
action_127 (31) = happyShift action_13
action_127 (32) = happyShift action_14
action_127 (33) = happyShift action_15
action_127 (34) = happyShift action_16
action_127 (35) = happyShift action_17
action_127 (36) = happyShift action_18
action_127 (37) = happyShift action_19
action_127 (38) = happyShift action_20
action_127 (39) = happyShift action_21
action_127 (40) = happyShift action_22
action_127 (41) = happyShift action_23
action_127 (42) = happyShift action_24
action_127 (43) = happyShift action_25
action_127 (47) = happyShift action_26
action_127 (49) = happyShift action_27
action_127 (51) = happyShift action_28
action_127 (52) = happyShift action_29
action_127 (53) = happyShift action_30
action_127 (4) = happyGoto action_134
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (18) = happyShift action_53
action_128 (19) = happyShift action_54
action_128 (20) = happyShift action_55
action_128 (21) = happyShift action_56
action_128 (22) = happyShift action_57
action_128 (23) = happyShift action_58
action_128 (24) = happyShift action_59
action_128 (46) = happyShift action_133
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (18) = happyShift action_53
action_129 (19) = happyShift action_54
action_129 (20) = happyShift action_55
action_129 (21) = happyShift action_56
action_129 (22) = happyShift action_57
action_129 (23) = happyShift action_58
action_129 _ = happyReduce_28

action_130 (12) = happyShift action_2
action_130 (13) = happyShift action_4
action_130 (14) = happyShift action_5
action_130 (15) = happyShift action_6
action_130 (16) = happyShift action_7
action_130 (17) = happyShift action_8
action_130 (25) = happyShift action_9
action_130 (28) = happyShift action_10
action_130 (29) = happyShift action_11
action_130 (30) = happyShift action_12
action_130 (31) = happyShift action_13
action_130 (32) = happyShift action_14
action_130 (33) = happyShift action_15
action_130 (34) = happyShift action_16
action_130 (35) = happyShift action_17
action_130 (36) = happyShift action_18
action_130 (37) = happyShift action_19
action_130 (38) = happyShift action_20
action_130 (39) = happyShift action_21
action_130 (40) = happyShift action_22
action_130 (41) = happyShift action_23
action_130 (42) = happyShift action_24
action_130 (43) = happyShift action_25
action_130 (47) = happyShift action_26
action_130 (49) = happyShift action_27
action_130 (51) = happyShift action_28
action_130 (52) = happyShift action_29
action_130 (53) = happyShift action_30
action_130 (4) = happyGoto action_132
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (18) = happyShift action_53
action_131 (19) = happyShift action_54
action_131 (20) = happyShift action_55
action_131 (21) = happyShift action_56
action_131 (22) = happyShift action_57
action_131 (23) = happyShift action_58
action_131 _ = happyReduce_22

action_132 (18) = happyShift action_53
action_132 (19) = happyShift action_54
action_132 (20) = happyShift action_55
action_132 (21) = happyShift action_56
action_132 (22) = happyShift action_57
action_132 (23) = happyShift action_58
action_132 (24) = happyShift action_59
action_132 (48) = happyShift action_136
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (12) = happyShift action_2
action_133 (13) = happyShift action_4
action_133 (14) = happyShift action_5
action_133 (15) = happyShift action_6
action_133 (16) = happyShift action_7
action_133 (17) = happyShift action_8
action_133 (25) = happyShift action_9
action_133 (28) = happyShift action_10
action_133 (29) = happyShift action_11
action_133 (30) = happyShift action_12
action_133 (31) = happyShift action_13
action_133 (32) = happyShift action_14
action_133 (33) = happyShift action_15
action_133 (34) = happyShift action_16
action_133 (35) = happyShift action_17
action_133 (36) = happyShift action_18
action_133 (37) = happyShift action_19
action_133 (38) = happyShift action_20
action_133 (39) = happyShift action_21
action_133 (40) = happyShift action_22
action_133 (41) = happyShift action_23
action_133 (42) = happyShift action_24
action_133 (43) = happyShift action_25
action_133 (47) = happyShift action_26
action_133 (49) = happyShift action_27
action_133 (51) = happyShift action_28
action_133 (52) = happyShift action_29
action_133 (53) = happyShift action_30
action_133 (4) = happyGoto action_135
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (18) = happyShift action_53
action_134 (19) = happyShift action_54
action_134 (20) = happyShift action_55
action_134 (21) = happyShift action_56
action_134 (22) = happyShift action_57
action_134 (23) = happyShift action_58
action_134 _ = happyReduce_30

action_135 (18) = happyShift action_53
action_135 (19) = happyShift action_54
action_135 (20) = happyShift action_55
action_135 (21) = happyShift action_56
action_135 (22) = happyShift action_57
action_135 (23) = happyShift action_58
action_135 (24) = happyShift action_59
action_135 _ = happyReduce_32

action_136 (47) = happyShift action_137
action_136 _ = happyFail (happyExpListPerState 136)

action_137 (12) = happyShift action_2
action_137 (13) = happyShift action_4
action_137 (14) = happyShift action_5
action_137 (15) = happyShift action_6
action_137 (16) = happyShift action_7
action_137 (17) = happyShift action_8
action_137 (25) = happyShift action_9
action_137 (28) = happyShift action_10
action_137 (29) = happyShift action_11
action_137 (30) = happyShift action_12
action_137 (31) = happyShift action_13
action_137 (32) = happyShift action_14
action_137 (33) = happyShift action_15
action_137 (34) = happyShift action_16
action_137 (35) = happyShift action_17
action_137 (36) = happyShift action_18
action_137 (37) = happyShift action_19
action_137 (38) = happyShift action_20
action_137 (39) = happyShift action_21
action_137 (40) = happyShift action_22
action_137 (41) = happyShift action_23
action_137 (42) = happyShift action_24
action_137 (43) = happyShift action_25
action_137 (47) = happyShift action_26
action_137 (49) = happyShift action_27
action_137 (51) = happyShift action_28
action_137 (52) = happyShift action_29
action_137 (53) = happyShift action_30
action_137 (4) = happyGoto action_138
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (18) = happyShift action_53
action_138 (19) = happyShift action_54
action_138 (20) = happyShift action_55
action_138 (21) = happyShift action_56
action_138 (22) = happyShift action_57
action_138 (23) = happyShift action_58
action_138 (24) = happyShift action_59
action_138 (48) = happyShift action_139
action_138 _ = happyFail (happyExpListPerState 138)

action_139 _ = happyReduce_23

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

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn4
		 (TmTrue
	)

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn4
		 (TmFalse
	)

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmTile happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmBlank happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLessThan happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMoreThan happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLessThanEqual happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMoreThanEqual happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMinus happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 4 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmInp happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReflect happy_var_2 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRotate happy_var_2 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmScale happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmAnd happy_var_2 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmNot happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmOr happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 8 4 happyReduction_22
happyReduction_22 ((HappyAbsSyn4  happy_var_8) `HappyStk`
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

happyReduce_23 = happyReduce 13 4 happyReduction_23
happyReduction_23 (_ `HappyStk`
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

happyReduce_24 = happyReduce 7 4 happyReduction_24
happyReduction_24 (_ `HappyStk`
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

happyReduce_25 = happyReduce 7 4 happyReduction_25
happyReduction_25 (_ `HappyStk`
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

happyReduce_26 = happySpecReduce_3  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRepeatH happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRepeatV happy_var_2 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 8 4 happyReduction_28
happyReduction_28 ((HappyAbsSyn4  happy_var_8) `HappyStk`
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

happyReduce_29 = happySpecReduce_2  4 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLength happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 9 4 happyReduction_30
happyReduction_30 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmFor happy_var_3 happy_var_9
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 6 4 happyReduction_31
happyReduction_31 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmIf happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 10 4 happyReduction_32
happyReduction_32 ((HappyAbsSyn4  happy_var_10) `HappyStk`
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

happyReduce_33 = happySpecReduce_3  4 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  4 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCell happy_var_2
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  4 happyReduction_35
happyReduction_35 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmComma happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  5 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn5
		 (TyBool
	)

happyReduce_37 = happySpecReduce_1  5 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn5
		 (TyAxis
	)

happyReduce_38 = happySpecReduce_1  5 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_39 = happySpecReduce_1  5 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn5
		 (TyTile
	)

happyReduce_40 = happySpecReduce_2  5 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (TyCell happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  5 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyComma happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  5 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn5
		 (TyFile
	)

happyNewToken action sts stk [] =
	action 57 57 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeAxis _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenTypeTile _ -> cont 8;
	TokenTypeCell _ -> cont 9;
	TokenTypeBool _ -> cont 10;
	TokenTypeFile _ -> cont 11;
	TokenXAxis _ -> cont 12;
	TokenYAxis _ -> cont 13;
	TokenTile _ -> cont 14;
	TokenBlank _ -> cont 15;
	TokenTrue _ -> cont 16;
	TokenFalse _ -> cont 17;
	TokenLessThan _ -> cont 18;
	TokenMoreThan _ -> cont 19;
	TokenLessThanEqual _ -> cont 20;
	TokenMoreThanEqual _ -> cont 21;
	TokenPlus _ -> cont 22;
	TokenMinus _ -> cont 23;
	TokenComma _ -> cont 24;
	TokenIf _ -> cont 25;
	TokenThen _ -> cont 26;
	TokenElse _ -> cont 27;
	TokenInput _ -> cont 28;
	TokenReflect _ -> cont 29;
	TokenRotate _ -> cont 30;
	TokenScale _ -> cont 31;
	TokenAnd _ -> cont 32;
	TokenNot _ -> cont 33;
	TokenOr _ -> cont 34;
	TokenSubtile _ -> cont 35;
	TokenCombine _ -> cont 36;
	TokenCombineH _ -> cont 37;
	TokenCombineV _ -> cont 38;
	TokenRepeatH _ -> cont 39;
	TokenRepeatV _ -> cont 40;
	TokenReplace _ -> cont 41;
	TokenLength _ -> cont 42;
	TokenLet _ -> cont 43;
	TokenHasType _ -> cont 44;
	TokenEq _ -> cont 45;
	TokenIn _ -> cont 46;
	TokenLParen _ -> cont 47;
	TokenRParen _ -> cont 48;
	TokenLSquBracket _ -> cont 49;
	TokenRSquBracket _ -> cont 50;
	TokenInt _ happy_dollar_dollar -> cont 51;
	TokenVar _ happy_dollar_dollar -> cont 52;
	TokenFor _ -> cont 53;
	TokenSemiColon _ -> cont 54;
	TokenCol _ -> cont 55;
	TokenRow _ -> cont 56;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 57 tk tks = happyError' (tks, explist)
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

data TileType = TyInt | TyBool | TyAxis | TyTile | TyCell TileType | TyComma TileType TileType | TyFile | TyFun TileType TileType
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmX | TmY | TmTrue | TmFalse 
            | TmTile Expr Expr | TmBlank Expr | TmCell Expr | TmComma Expr Expr
            | TmInp Expr
            | TmLessThan Expr Expr | TmMoreThan Expr Expr 
            | TmLessThanEqual Expr Expr | TmMoreThanEqual Expr Expr 
            | TmAdd Expr Expr | TmMinus Expr Expr
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
            | TmFor Expr Expr

            | TmLength Expr | TmIf Expr Expr Expr 
            | TmVar String | TmLet String TileType Expr Expr
            | TmFile String

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

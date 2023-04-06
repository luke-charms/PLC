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
happyExpList = Happy_Data_Array.listArray (0,673) ([63488,8191,101,8,0,0,0,0,65528,29983,0,0,0,65528,25887,63488,8191,101,65528,25887,63488,8191,101,65528,25887,63488,8191,101,65528,25887,63488,8191,101,65528,25887,0,0,1,65528,25887,63488,8191,101,0,256,63488,8191,101,0,256,0,0,1,65528,25887,63488,8191,101,0,0,0,0,0,65528,32031,63488,8191,119,0,16384,0,0,64,24,29960,63488,8191,101,65528,29983,63488,8191,117,65528,25887,63488,8191,117,65528,29983,38912,3683,117,65528,29983,63488,8191,117,65528,29983,63488,8191,117,65432,29967,63488,8191,117,0,0,63488,8191,101,24,25864,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63488,8191,101,65528,30495,0,0,0,0,0,63488,8191,117,0,32,0,8192,0,0,0,0,0,57344,3,0,992,0,0,65528,25887,0,0,1,65528,30495,63488,8191,101,65528,25887,6144,2048,103,4,4608,0,0,0,0,0,0,0,0,0,0,992,0,0,4,4608,992,0,0,0,64,992,0,0,0,4096,63488,8191,101,65528,25887,63488,8191,119,24,26376,63488,8191,101,0,256,63488,8191,117,0,8,0,0,0,65528,25887,0,0,16,65528,30111,0,0,0,65528,25887,0,2048,0,65528,30495,63488,8191,101,65528,29967,0,0,1,65528,25887,63488,8191,119,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Axis","Int","Tile","Blank","Cell","arr","x","y","tile","blank","reflect","rotate","scale","AND","NOT","OR","subtile","combine","repeatH","repeatV","replace","length","lam","let","':'","'='","in","'('","')'","'['","']'","','","int","var","%eof"]
        bit_start = st Prelude.* 40
        bit_end = (st Prelude.+ 1) Prelude.* 40
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..39]
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
action_0 (33) = happyShift action_21
action_0 (35) = happyShift action_22
action_0 (38) = happyShift action_23
action_0 (39) = happyShift action_24
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
action_3 (33) = happyShift action_21
action_3 (35) = happyShift action_22
action_3 (37) = happyShift action_44
action_3 (38) = happyShift action_23
action_3 (39) = happyShift action_24
action_3 (40) = happyAccept
action_3 (4) = happyGoto action_43
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
action_5 (33) = happyShift action_21
action_5 (35) = happyShift action_22
action_5 (38) = happyShift action_23
action_5 (39) = happyShift action_24
action_5 (4) = happyGoto action_42
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
action_6 (33) = happyShift action_21
action_6 (35) = happyShift action_22
action_6 (38) = happyShift action_23
action_6 (39) = happyShift action_24
action_6 (4) = happyGoto action_41
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
action_7 (33) = happyShift action_21
action_7 (35) = happyShift action_22
action_7 (38) = happyShift action_23
action_7 (39) = happyShift action_24
action_7 (4) = happyGoto action_40
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
action_8 (33) = happyShift action_21
action_8 (35) = happyShift action_22
action_8 (38) = happyShift action_23
action_8 (39) = happyShift action_24
action_8 (4) = happyGoto action_39
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
action_9 (33) = happyShift action_21
action_9 (35) = happyShift action_22
action_9 (38) = happyShift action_23
action_9 (39) = happyShift action_24
action_9 (4) = happyGoto action_38
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
action_10 (33) = happyShift action_21
action_10 (35) = happyShift action_22
action_10 (38) = happyShift action_23
action_10 (39) = happyShift action_24
action_10 (4) = happyGoto action_37
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
action_11 (33) = happyShift action_21
action_11 (35) = happyShift action_22
action_11 (38) = happyShift action_23
action_11 (39) = happyShift action_24
action_11 (4) = happyGoto action_36
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
action_12 (33) = happyShift action_21
action_12 (35) = happyShift action_22
action_12 (38) = happyShift action_23
action_12 (39) = happyShift action_24
action_12 (4) = happyGoto action_35
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
action_13 (33) = happyShift action_21
action_13 (35) = happyShift action_22
action_13 (38) = happyShift action_23
action_13 (39) = happyShift action_24
action_13 (4) = happyGoto action_34
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (33) = happyShift action_33
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
action_15 (29) = happyShift action_20
action_15 (33) = happyShift action_21
action_15 (35) = happyShift action_22
action_15 (38) = happyShift action_23
action_15 (39) = happyShift action_24
action_15 (4) = happyGoto action_32
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
action_16 (29) = happyShift action_20
action_16 (33) = happyShift action_21
action_16 (35) = happyShift action_22
action_16 (38) = happyShift action_23
action_16 (39) = happyShift action_24
action_16 (4) = happyGoto action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (33) = happyShift action_30
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
action_18 (33) = happyShift action_21
action_18 (35) = happyShift action_22
action_18 (38) = happyShift action_23
action_18 (39) = happyShift action_24
action_18 (4) = happyGoto action_29
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (33) = happyShift action_28
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (33) = happyShift action_27
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
action_21 (29) = happyShift action_20
action_21 (33) = happyShift action_21
action_21 (35) = happyShift action_22
action_21 (38) = happyShift action_23
action_21 (39) = happyShift action_24
action_21 (4) = happyGoto action_26
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
action_22 (26) = happyShift action_17
action_22 (27) = happyShift action_18
action_22 (28) = happyShift action_19
action_22 (29) = happyShift action_20
action_22 (33) = happyShift action_21
action_22 (35) = happyShift action_22
action_22 (38) = happyShift action_23
action_22 (39) = happyShift action_24
action_22 (4) = happyGoto action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_3

action_24 _ = happyReduce_4

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
action_25 (29) = happyShift action_20
action_25 (33) = happyShift action_21
action_25 (35) = happyShift action_22
action_25 (36) = happyShift action_60
action_25 (37) = happyShift action_44
action_25 (38) = happyShift action_23
action_25 (39) = happyShift action_24
action_25 (4) = happyGoto action_43
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
action_26 (26) = happyShift action_17
action_26 (27) = happyShift action_18
action_26 (28) = happyShift action_19
action_26 (29) = happyShift action_20
action_26 (33) = happyShift action_21
action_26 (34) = happyShift action_59
action_26 (35) = happyShift action_22
action_26 (37) = happyShift action_44
action_26 (38) = happyShift action_23
action_26 (39) = happyShift action_24
action_26 (4) = happyGoto action_43
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (39) = happyShift action_58
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (39) = happyShift action_57
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (12) = happyShift action_2
action_29 (13) = happyShift action_4
action_29 (28) = happyShift action_19
action_29 (33) = happyShift action_21
action_29 (35) = happyShift action_22
action_29 (37) = happyShift action_44
action_29 (38) = happyShift action_23
action_29 (39) = happyShift action_24
action_29 (4) = happyGoto action_43
action_29 _ = happyReduce_18

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
action_30 (29) = happyShift action_20
action_30 (33) = happyShift action_21
action_30 (35) = happyShift action_22
action_30 (38) = happyShift action_23
action_30 (39) = happyShift action_24
action_30 (4) = happyGoto action_56
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
action_31 (29) = happyShift action_20
action_31 (33) = happyShift action_21
action_31 (35) = happyShift action_22
action_31 (37) = happyShift action_44
action_31 (38) = happyShift action_23
action_31 (39) = happyShift action_24
action_31 (4) = happyGoto action_55
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
action_32 (29) = happyShift action_20
action_32 (33) = happyShift action_21
action_32 (35) = happyShift action_22
action_32 (37) = happyShift action_44
action_32 (38) = happyShift action_23
action_32 (39) = happyShift action_24
action_32 (4) = happyGoto action_54
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
action_33 (33) = happyShift action_21
action_33 (35) = happyShift action_22
action_33 (38) = happyShift action_23
action_33 (39) = happyShift action_24
action_33 (4) = happyGoto action_53
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
action_34 (33) = happyShift action_52
action_34 (35) = happyShift action_22
action_34 (37) = happyShift action_44
action_34 (38) = happyShift action_23
action_34 (39) = happyShift action_24
action_34 (4) = happyGoto action_43
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
action_35 (33) = happyShift action_21
action_35 (35) = happyShift action_22
action_35 (37) = happyShift action_44
action_35 (38) = happyShift action_23
action_35 (39) = happyShift action_24
action_35 (4) = happyGoto action_51
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (12) = happyShift action_2
action_36 (13) = happyShift action_4
action_36 (16) = happyShift action_7
action_36 (17) = happyShift action_8
action_36 (18) = happyShift action_9
action_36 (22) = happyShift action_13
action_36 (23) = happyShift action_14
action_36 (26) = happyShift action_17
action_36 (27) = happyShift action_18
action_36 (28) = happyShift action_19
action_36 (33) = happyShift action_21
action_36 (35) = happyShift action_22
action_36 (37) = happyShift action_44
action_36 (38) = happyShift action_23
action_36 (39) = happyShift action_24
action_36 (4) = happyGoto action_43
action_36 _ = happyReduce_11

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
action_37 (33) = happyShift action_21
action_37 (35) = happyShift action_22
action_37 (37) = happyShift action_44
action_37 (38) = happyShift action_23
action_37 (39) = happyShift action_24
action_37 (4) = happyGoto action_50
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
action_38 (33) = happyShift action_21
action_38 (35) = happyShift action_22
action_38 (37) = happyShift action_44
action_38 (38) = happyShift action_23
action_38 (39) = happyShift action_24
action_38 (4) = happyGoto action_49
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
action_39 (33) = happyShift action_21
action_39 (35) = happyShift action_22
action_39 (37) = happyShift action_44
action_39 (38) = happyShift action_23
action_39 (39) = happyShift action_24
action_39 (4) = happyGoto action_48
action_39 _ = happyFail (happyExpListPerState 39)

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
action_40 (29) = happyShift action_20
action_40 (33) = happyShift action_21
action_40 (35) = happyShift action_22
action_40 (37) = happyShift action_44
action_40 (38) = happyShift action_23
action_40 (39) = happyShift action_24
action_40 (4) = happyGoto action_47
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (12) = happyShift action_2
action_41 (13) = happyShift action_4
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
action_41 (33) = happyShift action_21
action_41 (35) = happyShift action_22
action_41 (37) = happyShift action_44
action_41 (38) = happyShift action_23
action_41 (39) = happyShift action_24
action_41 (4) = happyGoto action_43
action_41 _ = happyReduce_6

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
action_42 (33) = happyShift action_21
action_42 (35) = happyShift action_22
action_42 (37) = happyShift action_44
action_42 (38) = happyShift action_23
action_42 (39) = happyShift action_24
action_42 (4) = happyGoto action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (4) = happyGoto action_43
action_43 _ = happyReduce_21

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
action_44 (33) = happyShift action_21
action_44 (35) = happyShift action_22
action_44 (38) = happyShift action_23
action_44 (39) = happyShift action_24
action_44 (4) = happyGoto action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (12) = happyShift action_2
action_45 (13) = happyShift action_4
action_45 (28) = happyShift action_19
action_45 (33) = happyShift action_21
action_45 (35) = happyShift action_22
action_45 (38) = happyShift action_23
action_45 (39) = happyShift action_24
action_45 (4) = happyGoto action_43
action_45 _ = happyReduce_24

action_46 (32) = happyReduce_5
action_46 (34) = happyReduce_5
action_46 (36) = happyReduce_5
action_46 (40) = happyReduce_5
action_46 (4) = happyGoto action_43
action_46 _ = happyReduce_21

action_47 (32) = happyReduce_7
action_47 (34) = happyReduce_7
action_47 (36) = happyReduce_7
action_47 (40) = happyReduce_7
action_47 (4) = happyGoto action_43
action_47 _ = happyReduce_21

action_48 (32) = happyReduce_8
action_48 (34) = happyReduce_8
action_48 (36) = happyReduce_8
action_48 (40) = happyReduce_8
action_48 (4) = happyGoto action_43
action_48 _ = happyReduce_21

action_49 (32) = happyReduce_9
action_49 (34) = happyReduce_9
action_49 (36) = happyReduce_9
action_49 (40) = happyReduce_9
action_49 (4) = happyGoto action_43
action_49 _ = happyReduce_21

action_50 (32) = happyReduce_10
action_50 (34) = happyReduce_10
action_50 (36) = happyReduce_10
action_50 (40) = happyReduce_10
action_50 (4) = happyGoto action_43
action_50 _ = happyReduce_21

action_51 (32) = happyReduce_12
action_51 (34) = happyReduce_12
action_51 (36) = happyReduce_12
action_51 (40) = happyReduce_12
action_51 (4) = happyGoto action_43
action_51 _ = happyReduce_21

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
action_52 (26) = happyShift action_17
action_52 (27) = happyShift action_18
action_52 (28) = happyShift action_19
action_52 (29) = happyShift action_20
action_52 (33) = happyShift action_21
action_52 (35) = happyShift action_22
action_52 (38) = happyShift action_23
action_52 (39) = happyShift action_24
action_52 (4) = happyGoto action_65
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_2
action_53 (13) = happyShift action_4
action_53 (14) = happyShift action_5
action_53 (15) = happyShift action_6
action_53 (16) = happyShift action_7
action_53 (17) = happyShift action_8
action_53 (18) = happyShift action_9
action_53 (19) = happyShift action_10
action_53 (20) = happyShift action_11
action_53 (21) = happyShift action_12
action_53 (22) = happyShift action_13
action_53 (23) = happyShift action_14
action_53 (24) = happyShift action_15
action_53 (25) = happyShift action_16
action_53 (26) = happyShift action_17
action_53 (27) = happyShift action_18
action_53 (28) = happyShift action_19
action_53 (29) = happyShift action_20
action_53 (33) = happyShift action_21
action_53 (34) = happyShift action_64
action_53 (35) = happyShift action_22
action_53 (37) = happyShift action_44
action_53 (38) = happyShift action_23
action_53 (39) = happyShift action_24
action_53 (4) = happyGoto action_43
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (32) = happyReduce_15
action_54 (34) = happyReduce_15
action_54 (36) = happyReduce_15
action_54 (40) = happyReduce_15
action_54 (4) = happyGoto action_43
action_54 _ = happyReduce_21

action_55 (32) = happyReduce_16
action_55 (34) = happyReduce_16
action_55 (36) = happyReduce_16
action_55 (40) = happyReduce_16
action_55 (4) = happyGoto action_43
action_55 _ = happyReduce_21

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
action_56 (33) = happyShift action_21
action_56 (35) = happyShift action_22
action_56 (37) = happyShift action_63
action_56 (38) = happyShift action_23
action_56 (39) = happyShift action_24
action_56 (4) = happyGoto action_43
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (30) = happyShift action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (30) = happyShift action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_22

action_60 _ = happyReduce_23

action_61 (6) = happyShift action_70
action_61 (7) = happyShift action_71
action_61 (8) = happyShift action_72
action_61 (9) = happyShift action_73
action_61 (10) = happyShift action_74
action_61 (5) = happyGoto action_75
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_70
action_62 (7) = happyShift action_71
action_62 (8) = happyShift action_72
action_62 (9) = happyShift action_73
action_62 (10) = happyShift action_74
action_62 (5) = happyGoto action_69
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
action_63 (29) = happyShift action_20
action_63 (33) = happyShift action_21
action_63 (35) = happyShift action_22
action_63 (38) = happyShift action_23
action_63 (39) = happyShift action_24
action_63 (4) = happyGoto action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (33) = happyShift action_67
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
action_65 (29) = happyShift action_20
action_65 (33) = happyShift action_21
action_65 (34) = happyShift action_59
action_65 (35) = happyShift action_22
action_65 (37) = happyShift action_66
action_65 (38) = happyShift action_23
action_65 (39) = happyShift action_24
action_65 (4) = happyGoto action_43
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (12) = happyShift action_2
action_66 (13) = happyShift action_4
action_66 (14) = happyShift action_5
action_66 (15) = happyShift action_6
action_66 (16) = happyShift action_7
action_66 (17) = happyShift action_8
action_66 (18) = happyShift action_9
action_66 (19) = happyShift action_10
action_66 (20) = happyShift action_11
action_66 (21) = happyShift action_12
action_66 (22) = happyShift action_13
action_66 (23) = happyShift action_14
action_66 (24) = happyShift action_15
action_66 (25) = happyShift action_16
action_66 (26) = happyShift action_17
action_66 (27) = happyShift action_18
action_66 (28) = happyShift action_19
action_66 (29) = happyShift action_20
action_66 (33) = happyShift action_21
action_66 (35) = happyShift action_22
action_66 (38) = happyShift action_23
action_66 (39) = happyShift action_24
action_66 (4) = happyGoto action_83
action_66 _ = happyFail (happyExpListPerState 66)

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
action_67 (26) = happyShift action_17
action_67 (27) = happyShift action_18
action_67 (28) = happyShift action_19
action_67 (29) = happyShift action_20
action_67 (33) = happyShift action_21
action_67 (35) = happyShift action_22
action_67 (38) = happyShift action_23
action_67 (39) = happyShift action_24
action_67 (4) = happyGoto action_82
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (12) = happyShift action_2
action_68 (13) = happyShift action_4
action_68 (28) = happyShift action_19
action_68 (33) = happyShift action_21
action_68 (34) = happyShift action_81
action_68 (35) = happyShift action_22
action_68 (38) = happyShift action_23
action_68 (39) = happyShift action_24
action_68 (4) = happyGoto action_43
action_68 _ = happyReduce_24

action_69 (11) = happyShift action_76
action_69 (34) = happyShift action_80
action_69 (37) = happyShift action_78
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_25

action_71 _ = happyReduce_26

action_72 _ = happyReduce_27

action_73 _ = happyReduce_28

action_74 (6) = happyShift action_70
action_74 (7) = happyShift action_71
action_74 (8) = happyShift action_72
action_74 (9) = happyShift action_73
action_74 (10) = happyShift action_74
action_74 (5) = happyGoto action_79
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (11) = happyShift action_76
action_75 (34) = happyShift action_77
action_75 (37) = happyShift action_78
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (6) = happyShift action_70
action_76 (7) = happyShift action_71
action_76 (8) = happyShift action_72
action_76 (9) = happyShift action_73
action_76 (10) = happyShift action_74
action_76 (5) = happyGoto action_90
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (31) = happyShift action_89
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (6) = happyShift action_70
action_78 (7) = happyShift action_71
action_78 (8) = happyShift action_72
action_78 (9) = happyShift action_73
action_78 (10) = happyShift action_74
action_78 (5) = happyGoto action_88
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (37) = happyShift action_78
action_79 _ = happyReduce_30

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
action_80 (29) = happyShift action_20
action_80 (33) = happyShift action_21
action_80 (35) = happyShift action_22
action_80 (38) = happyShift action_23
action_80 (39) = happyShift action_24
action_80 (4) = happyGoto action_87
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (12) = happyShift action_2
action_81 (13) = happyShift action_4
action_81 (14) = happyShift action_5
action_81 (15) = happyShift action_6
action_81 (16) = happyShift action_7
action_81 (17) = happyShift action_8
action_81 (18) = happyShift action_9
action_81 (19) = happyShift action_10
action_81 (20) = happyShift action_11
action_81 (21) = happyShift action_12
action_81 (22) = happyShift action_13
action_81 (23) = happyShift action_14
action_81 (24) = happyShift action_15
action_81 (25) = happyShift action_16
action_81 (26) = happyShift action_17
action_81 (27) = happyShift action_18
action_81 (28) = happyShift action_19
action_81 (29) = happyShift action_20
action_81 (33) = happyShift action_21
action_81 (35) = happyShift action_22
action_81 (38) = happyShift action_23
action_81 (39) = happyShift action_24
action_81 (4) = happyGoto action_86
action_81 _ = happyFail (happyExpListPerState 81)

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
action_82 (29) = happyShift action_20
action_82 (33) = happyShift action_21
action_82 (34) = happyShift action_85
action_82 (35) = happyShift action_22
action_82 (37) = happyShift action_44
action_82 (38) = happyShift action_23
action_82 (39) = happyShift action_24
action_82 (4) = happyGoto action_43
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (12) = happyShift action_2
action_83 (13) = happyShift action_4
action_83 (28) = happyShift action_19
action_83 (33) = happyShift action_21
action_83 (34) = happyShift action_84
action_83 (35) = happyShift action_22
action_83 (38) = happyShift action_23
action_83 (39) = happyShift action_24
action_83 (4) = happyGoto action_43
action_83 _ = happyReduce_24

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
action_84 (29) = happyShift action_20
action_84 (33) = happyShift action_21
action_84 (35) = happyShift action_22
action_84 (38) = happyShift action_23
action_84 (39) = happyShift action_24
action_84 (4) = happyGoto action_94
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (33) = happyShift action_93
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (12) = happyShift action_2
action_86 (13) = happyShift action_4
action_86 (14) = happyShift action_5
action_86 (15) = happyShift action_6
action_86 (16) = happyShift action_7
action_86 (17) = happyShift action_8
action_86 (18) = happyShift action_9
action_86 (19) = happyShift action_10
action_86 (20) = happyShift action_11
action_86 (21) = happyShift action_12
action_86 (22) = happyShift action_13
action_86 (23) = happyShift action_14
action_86 (24) = happyShift action_15
action_86 (25) = happyShift action_16
action_86 (26) = happyShift action_17
action_86 (27) = happyShift action_18
action_86 (28) = happyShift action_19
action_86 (29) = happyShift action_20
action_86 (33) = happyShift action_21
action_86 (35) = happyShift action_22
action_86 (37) = happyShift action_44
action_86 (38) = happyShift action_23
action_86 (39) = happyShift action_24
action_86 (4) = happyGoto action_92
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (12) = happyFail []
action_87 (13) = happyFail []
action_87 (28) = happyShift action_19
action_87 (33) = happyFail []
action_87 (35) = happyFail []
action_87 (38) = happyFail []
action_87 (39) = happyFail []
action_87 (4) = happyGoto action_43
action_87 _ = happyReduce_19

action_88 _ = happyReduce_31

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
action_89 (29) = happyShift action_20
action_89 (33) = happyShift action_21
action_89 (35) = happyShift action_22
action_89 (38) = happyShift action_23
action_89 (39) = happyShift action_24
action_89 (4) = happyGoto action_91
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (37) = happyShift action_78
action_90 _ = happyReduce_29

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
action_91 (32) = happyShift action_96
action_91 (33) = happyShift action_21
action_91 (35) = happyShift action_22
action_91 (37) = happyShift action_44
action_91 (38) = happyShift action_23
action_91 (39) = happyShift action_24
action_91 (4) = happyGoto action_43
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (12) = happyFail []
action_92 (13) = happyFail []
action_92 (32) = happyReduce_17
action_92 (34) = happyReduce_17
action_92 (36) = happyReduce_17
action_92 (38) = happyFail []
action_92 (39) = happyFail []
action_92 (40) = happyReduce_17
action_92 (4) = happyGoto action_43
action_92 _ = happyReduce_21

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
action_93 (33) = happyShift action_21
action_93 (35) = happyShift action_22
action_93 (38) = happyShift action_23
action_93 (39) = happyShift action_24
action_93 (4) = happyGoto action_95
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (12) = happyFail []
action_94 (13) = happyFail []
action_94 (28) = happyShift action_19
action_94 (33) = happyFail []
action_94 (35) = happyFail []
action_94 (38) = happyFail []
action_94 (39) = happyFail []
action_94 (4) = happyGoto action_43
action_94 _ = happyReduce_13

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
action_95 (28) = happyShift action_19
action_95 (29) = happyShift action_20
action_95 (33) = happyShift action_21
action_95 (34) = happyShift action_98
action_95 (35) = happyShift action_22
action_95 (37) = happyShift action_44
action_95 (38) = happyShift action_23
action_95 (39) = happyShift action_24
action_95 (4) = happyGoto action_43
action_95 _ = happyFail (happyExpListPerState 95)

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
action_96 (33) = happyShift action_21
action_96 (35) = happyShift action_22
action_96 (38) = happyShift action_23
action_96 (39) = happyShift action_24
action_96 (4) = happyGoto action_97
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
action_97 (33) = happyShift action_21
action_97 (35) = happyShift action_22
action_97 (37) = happyShift action_44
action_97 (38) = happyShift action_23
action_97 (39) = happyShift action_24
action_97 (4) = happyGoto action_43
action_97 _ = happyReduce_20

action_98 (33) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (12) = happyShift action_2
action_99 (13) = happyShift action_4
action_99 (14) = happyShift action_5
action_99 (15) = happyShift action_6
action_99 (16) = happyShift action_7
action_99 (17) = happyShift action_8
action_99 (18) = happyShift action_9
action_99 (19) = happyShift action_10
action_99 (20) = happyShift action_11
action_99 (21) = happyShift action_12
action_99 (22) = happyShift action_13
action_99 (23) = happyShift action_14
action_99 (24) = happyShift action_15
action_99 (25) = happyShift action_16
action_99 (26) = happyShift action_17
action_99 (27) = happyShift action_18
action_99 (28) = happyShift action_19
action_99 (29) = happyShift action_20
action_99 (33) = happyShift action_21
action_99 (35) = happyShift action_22
action_99 (38) = happyShift action_23
action_99 (39) = happyShift action_24
action_99 (4) = happyGoto action_100
action_99 _ = happyFail (happyExpListPerState 99)

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
action_100 (33) = happyShift action_21
action_100 (34) = happyShift action_101
action_100 (35) = happyShift action_22
action_100 (37) = happyShift action_44
action_100 (38) = happyShift action_23
action_100 (39) = happyShift action_24
action_100 (4) = happyGoto action_43
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_14

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

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLength happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 7 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_7) `HappyStk`
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

happyReduce_20 = happyReduce 10 4 happyReduction_20
happyReduction_20 ((HappyAbsSyn4  happy_var_10) `HappyStk`
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

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCell happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmComma happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (TyAxis
	)

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TyTile
	)

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (TyBlank
	)

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  5 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (TyCell happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  5 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyComma happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

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
	TokenLength _ -> cont 27;
	TokenLambda _ -> cont 28;
	TokenLet _ -> cont 29;
	TokenHasType _ -> cont 30;
	TokenEq _ -> cont 31;
	TokenIn _ -> cont 32;
	TokenLParen _ -> cont 33;
	TokenRParen _ -> cont 34;
	TokenLSquBracket _ -> cont 35;
	TokenRSquBracket _ -> cont 36;
	TokenComma _ -> cont 37;
	TokenInt _ happy_dollar_dollar -> cont 38;
	TokenVar _ happy_dollar_dollar -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
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

VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL B
        SIGNAL XLXN_25
        SIGNAL SUM
        SIGNAL CARRY
        SIGNAL C
        SIGNAL XLXN_68
        SIGNAL XLXN_26
        PORT Input A
        PORT Input B
        PORT Output SUM
        PORT Output CARRY
        PORT Input C
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_68
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 C
            PIN I1 XLXN_68
            PIN O SUM
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 C
            PIN I1 XLXN_68
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 XLXN_26
            PIN I1 XLXN_25
            PIN O CARRY
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A
            WIRE 784 1168 864 1168
            WIRE 864 1168 912 1168
            WIRE 864 1168 864 1456
            WIRE 864 1456 944 1456
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1504 1328 1520 1328
        END BRANCH
        BEGIN BRANCH SUM
            WIRE 1520 1184 1632 1184
        END BRANCH
        BEGIN BRANCH CARRY
            WIRE 1776 1360 1856 1360
        END BRANCH
        IOMARKER 1632 1184 SUM R0 28
        BEGIN BRANCH B
            WIRE 784 1232 896 1232
            WIRE 896 1232 912 1232
            WIRE 896 1232 896 1520
            WIRE 896 1520 944 1520
        END BRANCH
        BEGIN BRANCH C
            WIRE 752 1312 752 1408
            WIRE 752 1408 1216 1408
            WIRE 1216 1216 1264 1216
            WIRE 1216 1216 1216 1360
            WIRE 1216 1360 1216 1408
            WIRE 1216 1360 1248 1360
        END BRANCH
        IOMARKER 1856 1360 CARRY R0 28
        IOMARKER 752 1312 C R180 28
        IOMARKER 784 1232 B R180 28
        IOMARKER 784 1168 A R180 28
        INSTANCE XLXI_2 1264 1280 R0
        INSTANCE XLXI_1 912 1296 R0
        BEGIN BRANCH XLXN_68
            WIRE 1168 1200 1184 1200
            WIRE 1184 1200 1184 1296
            WIRE 1184 1296 1248 1296
            WIRE 1184 1152 1184 1200
            WIRE 1184 1152 1264 1152
        END BRANCH
        INSTANCE XLXI_4 1248 1424 R0
        INSTANCE XLXI_5 1520 1456 R0
        INSTANCE XLXI_3 944 1584 R0
        BEGIN BRANCH XLXN_26
            WIRE 1200 1488 1520 1488
            WIRE 1520 1392 1520 1488
        END BRANCH
    END SHEET
END SCHEMATIC

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
        SIGNAL SUM
        SIGNAL CARRY
        PORT Input A
        PORT Input B
        PORT Output SUM
        PORT Output CARRY
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
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O SUM
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O CARRY
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1280 1328 R0
        INSTANCE XLXI_2 1520 1488 R0
        BEGIN BRANCH A
            WIRE 1072 1200 1232 1200
            WIRE 1232 1200 1232 1360
            WIRE 1232 1360 1520 1360
            WIRE 1232 1200 1280 1200
        END BRANCH
        BEGIN BRANCH B
            WIRE 1088 1264 1216 1264
            WIRE 1216 1264 1280 1264
            WIRE 1216 1264 1216 1424
            WIRE 1216 1424 1280 1424
            WIRE 1280 1424 1520 1424
        END BRANCH
        IOMARKER 1072 1200 A R180 28
        IOMARKER 1088 1264 B R180 28
        BEGIN BRANCH SUM
            WIRE 1536 1232 1568 1232
        END BRANCH
        IOMARKER 1568 1232 SUM R0 28
        BEGIN BRANCH CARRY
            WIRE 1776 1392 1808 1392
        END BRANCH
        IOMARKER 1808 1392 CARRY R0 28
    END SHEET
END SCHEMATIC

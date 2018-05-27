VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL A
        SIGNAL B
        SIGNAL DIFFERENCE
        SIGNAL BORROW
        PORT Input A
        PORT Input B
        PORT Output DIFFERENCE
        PORT Output BORROW
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O DIFFERENCE
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 XLXN_1
            PIN I1 B
            PIN O BORROW
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I A
            PIN O XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1360 1328 R0
        BEGIN BRANCH XLXN_1
            WIRE 1600 1392 1616 1392
        END BRANCH
        INSTANCE XLXI_3 1376 1424 R0
        BEGIN BRANCH A
            WIRE 1264 1200 1344 1200
            WIRE 1344 1200 1360 1200
            WIRE 1344 1200 1344 1392
            WIRE 1344 1392 1376 1392
        END BRANCH
        INSTANCE XLXI_2 1616 1456 R0
        BEGIN BRANCH B
            WIRE 1264 1264 1328 1264
            WIRE 1328 1264 1360 1264
            WIRE 1328 1264 1328 1328
            WIRE 1328 1328 1616 1328
        END BRANCH
        IOMARKER 1264 1200 A R180 28
        IOMARKER 1264 1264 B R180 28
        BEGIN BRANCH DIFFERENCE
            WIRE 1616 1232 1648 1232
        END BRANCH
        IOMARKER 1648 1232 DIFFERENCE R0 28
        BEGIN BRANCH BORROW
            WIRE 1872 1360 1904 1360
        END BRANCH
        IOMARKER 1904 1360 BORROW R0 28
    END SHEET
END SCHEMATIC

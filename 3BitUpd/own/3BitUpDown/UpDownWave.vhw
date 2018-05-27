--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.1i
--  \   \         Application : ISE
--  /   /         Filename : UpDownWave.vhw
-- /___/   /\     Timestamp : Thu Apr 12 08:58:40 2018
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: UpDownWave
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY UpDownWave IS
END UpDownWave;

ARCHITECTURE testbench_arch OF UpDownWave IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT UpDownCounter
        PORT (
            PRE : In std_logic;
            CLR : In std_logic;
            CLK : In std_logic;
            A : In std_logic;
            Y : Out std_logic_vector (2 DownTo 0)
        );
    END COMPONENT;

    SIGNAL PRE : std_logic := '0';
    SIGNAL CLR : std_logic := '0';
    SIGNAL CLK : std_logic := '0';
    SIGNAL A : std_logic := '0';
    SIGNAL Y : std_logic_vector (2 DownTo 0) := "000";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    constant PERIOD : time := 100 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : UpDownCounter
        PORT MAP (
            PRE => PRE,
            CLR => CLR,
            CLK => CLK,
            A => A,
            Y => Y
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            PROCEDURE CHECK_Y(
                next_Y : std_logic_vector (2 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Y /= next_Y) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Y="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Y);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Y);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  35ns
                WAIT FOR 35 ns;
                CLR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  135ns
                WAIT FOR 100 ns;
                PRE <= '1';
                CLR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  235ns
                WAIT FOR 100 ns;
                CLR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  335ns
                WAIT FOR 100 ns;
                PRE <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  535ns
                WAIT FOR 200 ns;
                PRE <= '1';
                A <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  965ns
                WAIT FOR 430 ns;
                CHECK_Y("010", 965);
                -- -------------------------------------
                WAIT FOR 135 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;


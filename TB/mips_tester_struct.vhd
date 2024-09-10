-- VHDL Entity MIPS.MIPS_tester.interface
--
-- Created:
--          by - kolaman.UNKNOWN (KOLAMAN-PC)
--          at - 09:22:44 17/02/2013
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2011.1 (Build 18)
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY MIPS_tester IS
   PORT( 
--			reset     							: OUT 	STD_LOGIC; for test GPIO !!!!!!!!!
			clock								: OUT 	STD_LOGIC; 
			-- Output important signals to pins for easy display in Simulator
			PC									: IN  STD_LOGIC_VECTOR( 9 DOWNTO 0 );
			Instruction_out						: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			LEDS						 		: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			HEX_0, HEX_1, HEX_2, HEX_3, HEX_4,HEX_5 : IN 	STD_LOGIC_VECTOR( 6 DOWNTO 0 );
			SW_IN 								: OUT 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			KEY_0, KEY_1, KEY_2, KEY_3 			: OUT 	STD_LOGIC;
			PWMout								: IN   STD_LOGIC	
   );

-- Declarations

END MIPS_tester ;


--
-- VHDL Architecture MIPS.MIPS_tester.struct
--
-- Created:
--          by - kolaman.UNKNOWN (KOLAMAN-PC)
--          at - 09:22:44 17/02/2013
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2011.1 (Build 18)


ARCHITECTURE struct OF MIPS_tester IS

   -- Architecture declarations

   -- Internal signal declarations


   -- ModuleWare signal declarations(v1.9) for instance 'U_0' of 'clk'
   SIGNAL mw_U_0clk : std_logic;
   SIGNAL mw_U_0disable_clk : boolean := FALSE;

   -- ModuleWare signal declarations(v1.9) for instance 'U_1' of 'pulse'
--   SIGNAL mw_U_1pulse, mw_U_2pulse, mw_U_3pulse, mw_U_4pulse : std_logic :='0';


BEGIN
	
	SW_IN <="00000001";

	u_0clk_proc: PROCESS
	   BEGIN
		  WHILE NOT mw_U_0disable_clk LOOP
			 mw_U_0clk <= '0', '1' AFTER 50 ns;
			 WAIT FOR 100 ns;
		  END LOOP;
		  WAIT;
	END PROCESS u_0clk_proc;
	mw_U_0disable_clk <= TRUE AFTER 1000000 ns;
	clock <= mw_U_0clk;

	u_1pulse_proc: PROCESS
	   BEGIN
		  KEY_0 <= 
			 '1',
			 '0' AFTER 20 ns,
			 -- '0' AFTER 120 ns;
			 '1' AFTER 120 ns;
		  WAIT;
	END PROCESS u_1pulse_proc;

	u_2pulse_proc: PROCESS
	   BEGIN
		  KEY_1 <= 
			 '1',
			 '0' AFTER 2500 ns,
			 -- '0' AFTER 120 ns;
			 '1' AFTER 2600 ns;
		  WAIT;
	END PROCESS u_2pulse_proc;

	u_3pulse_proc: PROCESS
	   BEGIN
		  KEY_2 <= 
			 '1',
			 '0' AFTER 4700 ns,
			 -- '0' AFTER 120 ns;
			 '1' AFTER 4800 ns;
		  WAIT;
	END PROCESS u_3pulse_proc;
	
	u_4pulse_proc: PROCESS
	   BEGIN
		  KEY_3 <= 
			 '1',
			 '0' AFTER 6700 ns,
			 -- '0' AFTER 120 ns;
			 '1' AFTER 6800 ns;
		  WAIT;
	END PROCESS u_4pulse_proc;
	
END struct;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.12.2024 11:02:24
-- Design Name: 
-- Module Name: BCD_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_tb is
--  Port ( );
end BCD_tb;

architecture Behavioral of BCD_tb is

COMPONENT ConversorBCD is
    Port ( 
           BIN   : in STD_LOGIC_VECTOR (5 downto 0);
           CLK   : in std_logic;
           BCD   : out STD_LOGIC_VECTOR (7 downto 0)
           );
end COMPONENT;

signal BIN    :  STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
signal CLK  :  std_logic := '0';
signal BCD :  STD_LOGIC_VECTOR (7 downto 0);

begin
    uut : ConversorBCD PORT MAP(
        BIN => BIN,
        CLK => CLK,
        BCD => BCD
    );

process    
begin
    wait for 10 ns;
    CLK <= not CLK;
end process;
 
process
begin
    BIN <= "111111";
    wait for 100ns;
    assert BCD = "01100011"
    REPORT "Error"
    SEVERITY FAILURE;
    
    
    BIN <= "000010";
    wait for 100ns;
    assert BCD = "00000010"
    REPORT "Error"
    SEVERITY FAILURE;
    
    assert false
    REPORT "Test Finalizado"
    SEVERITY FAILURE;
end process;    
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2025 19:46:41
-- Design Name: 
-- Module Name: GestionSieteSegmentos - Behavioral
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

entity GestionSieteSegmentos is
    Port ( BIN : in STD_LOGIC_VECTOR (5 downto 0);
           CLK : in STD_LOGIC;
           DISP : out STD_LOGIC_VECTOR (13 downto 0));
end GestionSieteSegmentos;

architecture Behavioral of GestionSieteSegmentos is

    component ConversorBCD is
        Port ( BIN   : in STD_LOGIC_VECTOR (5 downto 0);
               CLK   : in std_logic;
               BCD   : out STD_LOGIC_VECTOR (7 downto 0)
               );
    end component;
    
    component DecoderBCD is
        Port ( code : in STD_LOGIC_VECTOR (3 downto 0);
               led : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal BCD : std_logic_vector(7 downto 0);
    begin
    
    Conversor : ConversorBCD
        port map(
            BIN => BIN,
            CLK => CLK,
            BCD => BCD
        );
    
    DIGITO_0 : DecoderBCD 
        port map(
            code => BCD(3 downto 0),
            led => DISP(6 downto 0)
        );
    
    DIGITO_1 : DecoderBCD 
        port map(
            code => BCD(7 downto 4),
            led => DISP(13 downto 7)
        );
    
end Behavioral;

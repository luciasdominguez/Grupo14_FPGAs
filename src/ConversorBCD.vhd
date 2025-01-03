----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2024 13:09:11
-- Design Name: 
-- Module Name: ConversorBCD - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ConversorBCD is
    Port ( BIN   : in STD_LOGIC_VECTOR (5 downto 0);
           CLK   : in std_logic;
           BCD   : out STD_LOGIC_VECTOR (7 downto 0)
           );
end ConversorBCD;

architecture Behavioral of ConversorBCD is

begin
    process(CLK)
    variable conversion : std_logic_vector(13 downto 0);
    begin
        conversion := "00000000"&BIN;
        if(rising_edge(CLK)) then
            for i in 0 to 5 loop
                --Primera Correccion
                if(conversion(9 downto 6) >= "0101") then
                    conversion(13 downto 6) := std_logic_vector(unsigned(conversion(13 downto 6))+"00000011");
                elsif(conversion(13 downto 10) >= "0101") then 
                    conversion(13 downto 10) := std_logic_vector(unsigned(conversion(13 downto 10))+"0011");
                end if;
                conversion := std_logic_vector(unsigned(conversion) SLL 1);
            end loop;
            
            --Segunda Corrección
             if(conversion(9 downto 6) >= "1001") then
                    conversion(13 downto 6) := std_logic_vector(unsigned(conversion(13 downto 6))+"00000110");
             end if;
             if(conversion(13 downto 10) >= "1001") then 
                    conversion(13 downto 10) := std_logic_vector(unsigned(conversion(13 downto 10))+"0110");
             end if;
             
             BCD <= conversion(13 downto 6);
        end if;
    end process;
    
end Behavioral;

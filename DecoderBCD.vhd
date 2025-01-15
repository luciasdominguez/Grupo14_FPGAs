----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2024 09:29:58
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity DecoderBCD is
    Port ( code : in STD_LOGIC_VECTOR (3 downto 0);
           led : out STD_LOGIC_VECTOR (6 downto 0));
end DecoderBCD;

architecture Behavioral of DecoderBCD is
begin
    WITH code SELECT
        led <= "0000001" WHEN "0000",
               "1001111" WHEN "0001",
               "0010010" WHEN "0010",
               "0000110" WHEN "0011",
               "1001100" WHEN "0100",
               "0100100" WHEN "0101",
               "0100000" WHEN "0110",
               "0001111" WHEN "0111",
               "0000000" WHEN "1000",
               "0000100" WHEN "1001",
               "1111110" WHEN others;
end architecture Behavioral;

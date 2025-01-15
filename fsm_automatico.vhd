----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2025 10:40:21
-- Design Name: 
-- Module Name: fsm_automatico - Behavioral
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

entity fsm_automatico is
        Port(
            CLK                 : in std_logic;  
            RST                 : in std_logic;
            ENABLE_AUTOMATICO   : in std_logic;
            RGB_OUT             : out std_logic_vector(17 downto 0)
        );
end fsm_automatico;

architecture Behavioral of fsm_automatico is

begin
process(CLK,RST)
begin
    if(rising_edge(CLK)) then
        if(enable_automatico = '1') then
            if(RST = '0') then 
                RGB_OUT <= (others=> '0');
            else
                RGB_OUT <= (others=> '1');
            end if;
       end if;
    end if;    

end process;
end Behavioral;

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

    component DivisorFrecuencia is 
        generic(
            F_in : integer := 1000000000; --dHz
            F_out : integer := 20 --dHz
        );
        Port ( 
            E           : in std_logic; --Enable
            CLK_in      : in STD_LOGIC; --Reloj de entrada
            CLK_out     : out std_logic --Reloj de salida
        ); 
    end component;
    
    component counter is
        Port ( 
           CLK  : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CODE : out STD_LOGIC_VECTOR (2 downto 0)
         );
    end component;

signal CLK_500mHZ : std_logic;

signal estados : STD_LOGIC_VECTOR (2 downto 0);

begin

    Frecuencia : DivisorFrecuencia 
    generic map(
        F_in => 1000000000, --dHz
        F_out => 5 --dHz
    )
    port map(
        E => ENABLE_AUTOMATICO,
        CLK_in => CLK,
        CLK_out => CLK_500mHZ
    );
    
    contador_estados : counter
        port map(
            CLK => CLK_500mHZ,
            RESET => RST,
            CODE => estados
    );
    
    with estados select
        RGB_OUT(5 downto 0) <=  "000010"   WHEN "000",
                                "000000"   WHEN "001",
                                "000101"   WHEN "010",
                                "010000"   WHEN "011",
                                "010000"   WHEN "100",
                                "000000"   WHEN "101",
                                "000000"   WHEN others;
                                
    with estados select                           
        RGB_OUT(11 downto 6) <=  "000000"   WHEN "000",
                                 "000100"   WHEN "001",
                                 "000101"   WHEN "010",
                                 "000010"   WHEN "011",
                                 "000000"   WHEN "100",
                                 "001001"   WHEN "101",
                                 "000000"   WHEN others;
    
    with estados select
        RGB_OUT(17 downto 12) <= "000100"   WHEN "000",
                                 "000100"   WHEN "001",
                                 "000000"   WHEN "010",
                                 "000000"   WHEN "011",
                                 "010000"   WHEN "100",
                                 "000011"   WHEN "101",
                                 "000000"   WHEN others;
                                    
end Behavioral;

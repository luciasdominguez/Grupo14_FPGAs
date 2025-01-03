----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2024 18:10:46
-- Design Name: 
-- Module Name: PWM_test - TB
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM_test is
--  Port ( );
end PWM_test;

architecture TB of PWM_test is

COMPONENT ModuladorPWM is
    Port ( 
           D    : in STD_LOGIC_VECTOR (5 downto 0); --Vector que define el ciclo de trabajo D. Toma valores de 0 a 64 (6bit)
           CLK  : in STD_LOGIC; -- Reloj del sistema. El periodo del PWM estará definido por 1/64 veces esta señal
           Vout : out STD_LOGIC -- Señal de salida
           );
end COMPONENT;

signal D    :  STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
signal CLK  :  std_logic := '0';
signal Vout :  std_logic := '0';

begin
    uut : ModuladorPWM PORT MAP(
        D => D,
        CLK => CLK,
        Vout => Vout
    );

process
begin
    wait for 10 ns;
    CLK <= not CLK;
end process;

process
begin
    D <= "100000";
    wait for 640 ns;
    D <= "010000";
    wait for 160 ns;
    D <= "110000";
    wait for 480 ns;
    assert false
    REPORT "Test Finalizado"
    SEVERITY FAILURE;
end process;
end TB;

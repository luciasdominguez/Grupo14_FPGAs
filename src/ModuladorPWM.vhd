----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2024 17:40:39
-- Design Name: 
-- Module Name: ModuladorPWM - Behaivioral
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

entity ModuladorPWM is
    Port ( D    : in STD_LOGIC_VECTOR (5 downto 0); --Vector que define el ciclo de trabajo D. Toma valores de 0 a 64 (6bit)
           CLK  : in STD_LOGIC; -- Reloj del sistema. El periodo del PWM estará definido por 1/64 veces esta señal
           Vout : out STD_LOGIC -- Señal de salida
          );
end ModuladorPWM;

architecture Behavioral of ModuladorPWM is
signal t_on : unsigned(5 downto 0) := (others => '0'); -- Cuenta el nº de flancos de reloj positivos con Vout = 1
signal t_off : unsigned(5 downto 0) := (others => '0'); -- Cuenta el nº de flancos de reloj positivos con Vout = 0
signal t_total : unsigned(6 downto 0) := (others => '0');
begin
    process(CLK)
    begin
        --Generación de pulso PWM
        if(rising_edge(CLK)) then
            if t_on < UNSIGNED(D) then
                Vout <= '1';
                t_on <= t_on + 1;
            elsif t_on + t_off < 64 then
                Vout <= '0';
                t_off <= t_off + 1;   
            end if;
        end if;
        --Reinicio de los contadores al acabar el periodo
        t_total <= '0' & (t_on + t_off);
        if t_total >= 64 then
            t_on <= (others => '0');
            t_off <= (others => '0');
            t_total <= (others => '0');
        end if;
    end process;
end Behavioral;

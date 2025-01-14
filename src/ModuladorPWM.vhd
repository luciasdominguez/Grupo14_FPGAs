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
  signal t_count : unsigned(5 downto 0) := (others => '0'); -- Contador del periodo
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            -- Generación de PWM
            if t_count < UNSIGNED(D) then
                Vout <= '1'; -- Dentro del ciclo de trabajo
            else
                Vout <= '0'; -- Fuera del ciclo de trabajo
            end if;

            -- Incremento del contador
            if t_count = 63 then
                t_count <= (others => '0'); -- Reinicia el contador al final del periodo
            else
                t_count <= t_count + 1; -- Incrementa el contador
            end if;
        end if;
    end process;
end Behavioral;

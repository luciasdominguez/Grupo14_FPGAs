----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2024 12:11:41
-- Design Name: 
-- Module Name: GestorParpadeo - Behavioral
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

entity GestorParpadeo is
    Port ( Vin : in STD_LOGIC_VECTOR(2 downto 0); --Entrada que enviaremos al LED tras ser procesada (tres colores)
           SW_Parpadeo : in STD_LOGIC; --Switch de Control del parpadeo
           CLK : in STD_LOGIC; --Reloj del sistema
           LED : out STD_LOGIC_VECTOR(2 downto 0) --Señal de salida hacia el LED (tres colores)
           ); 
end GestorParpadeo;

architecture Behavioral of GestorParpadeo is

--Señales y componentes para control de frecuencia de parpadeo
component DivisorFrecuencia 
    generic(
        F_in : integer := 100000000; --Hz
        F_out : integer := 2 --Hz
    );
    Port (
        E           : in std_logic; --Enable 
        CLK_in      : in STD_LOGIC; --Reloj de entrada
        CLK_out     : out std_logic --Reloj de salida
    );
end component;

signal clk_parpadeo     : std_logic; --Reloj de parpadeo
signal enable_parpadeo  : std_logic; --Enable del parpadeo

begin

Divisor: DivisorFrecuencia
    port map(
        E => enable_parpadeo,
        CLK_in => CLK,
        CLK_out => clk_parpadeo
    );

process(CLK)
begin
    if (rising_edge(CLK)) then
        if(SW_Parpadeo = '1') then
            enable_parpadeo <= '1';
            if(clk_parpadeo = '1') then
                LED <= Vin;
            else
                LED <= "000";
            end if;
        else
            enable_parpadeo <= '0';
            LED <= Vin;
        end if;
    end if;
end process;
end Behavioral;

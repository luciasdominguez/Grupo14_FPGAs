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
        F_in : integer := 1000000000; --Hz
        F_out : integer := 20 --Hz
    );
    Port (
        E           : in std_logic;
        CLK_in      : in STD_LOGIC; --Reloj de entrada
        CLK_out     : out std_logic --Reloj de salida
    );
end component;

signal clk_parpadeo     : std_logic; --Reloj de parpadeo
signal encendido        : std_logic := '1';
signal clk_s            : std_logic;

begin

Divisor: DivisorFrecuencia
    generic map(
        F_in  => 1000000000, --dHz
        F_out => 10 --dHz
    )
    port map(
        E => '1',
        CLK_in => CLK,
        CLK_out => clk_parpadeo
    );

process(clk,clk_parpadeo)
begin
    if(rising_edge(CLK)) then
        if(SW_parpadeo = '1') then
            clk_s <= CLK;
        else 
            clk_s <= clk_parpadeo;
        end if;
    end if;
end process;

process(clk_s)
begin
    if (rising_edge(clk_s)) then
        encendido <= not encendido;
    end if;
    
    if(encendido = '1') then
        LED <= Vin;
    else
        LED <= "000";
    end if;    
end process;

end Behavioral;

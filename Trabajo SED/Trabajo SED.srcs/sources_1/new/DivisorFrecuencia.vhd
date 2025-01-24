library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity DivisorFrecuencia is
    generic(
        F_in : integer := 1000000000; --dHz
        F_out : integer := 20 --dHz
    );
    Port ( 
        E           : in std_logic; --Enable
        CLK_in      : in STD_LOGIC; --Reloj de entrada
        CLK_out     : out std_logic --Reloj de salida
    ); 
end DivisorFrecuencia;

architecture Behavioral of DivisorFrecuencia is

signal contador : unsigned(31 downto 0) := (others=>'0'); --Usaremos un contador para contar ciclos de reloj
signal clk_out_s : std_logic := '1';

begin
    process(CLK_in, E)
    constant cuenta_i : unsigned(31 downto 0) := TO_UNSIGNED(F_in/F_out,32);
    begin
        if(E = '1') then
            if(rising_edge(CLK_in)) then
                if(contador = 0) then
                    clk_out_s <= not clk_out_s;
                    contador <= cuenta_i;
                else
                    contador <= contador - 1;
                end if;
            end if;
        end if;
    end process;
    clk_out <= clk_out_s;
end Behavioral;

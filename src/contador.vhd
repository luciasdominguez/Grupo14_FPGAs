library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity color_counter is
    Port (
        clk         : in std_logic;
        reset       : in std_logic;
        increment   : in std_logic;                        -- Botón para incrementar
        decrement   : in std_logic;                        -- Botón para decrementar
        enable      : in std_logic;                        -- Señal de habilitación del contador
        color_value : out std_logic_vector(5 downto 0)    -- Valor del color
    );
end color_counter;

architecture Behavioral of color_counter is
signal counter : integer range 0 to 64 := 0;
begin

    -- Proceso del contador
   process(clk, reset)
    begin
        if reset = '0' then
            counter <= 0;
        elsif rising_edge(clk) then
            if enable = '1' then
                if increment = '1' and counter < 63 then
                    counter <= counter + 1;
                elsif decrement = '1' and counter > 0 then
                    counter <= counter - 1;
                end if;
            end if;
        end if;
    end process;

    -- Asignación de la salida del contador
    color_value <= std_logic_vector(to_unsigned(counter, 6));

end Behavioral;
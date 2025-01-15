----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2025 13:31:54
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
use IEEE.NUMERIC_STD.ALL;

entity fsm_automatico is
    Port (
      clk               : in std_logic;
      reset             : in std_logic;  -- Reset negado
     auto_mode_enable : in std_logic;
      RGB_out           : out std_logic_vector(17 downto 0)
    );
end fsm_automatico;

architecture Behavioral of fsm_automatico is

    -- Declaración de señales para valores RGB
    signal R_value, G_value, B_value : integer range 0 to 65 := 0;
    signal state : integer range 0 to 5 := 0; -- Estados para las secuencias de variación

    -- Señal de tick habilitada por el divisor de frecuencia
    signal tick_enable : std_logic := '0';

    -- Componente divisor de frecuencia
    component DivisorFrecuencia
        generic (
            F_in : integer;
            F_out : integer
        );
        Port (
            clk_in : in std_logic;
            reset   : in std_logic;
            tick_out : out std_logic
        );
    end component;

    -- Instancia del divisor de frecuencia configurado para 1000 Hz
    Frecuencia: DivisorFrecuencia
        generic map (
            F_in => 100000000, -- 100 MHz
            F_out => 0.1      -- 100 mHz (10s por tick)
        )
        port map (
            clk_in => clk,
            reset => reset,
            tick_out => tick_enable
        );

begin

    -- Proceso de variación de colores según la secuencia especificada
    process(clk, reset)
    begin
        if reset = '0' then
            R_value <= 65;
            G_value <= 0;
            B_value <= 0;
            state <= 0;
        elsif rising_edge(clk) and tick_enable = '1' then
            case state is

                -- R descendente, B ascendente
                when 0 =>
                    if R_value > 0 then
                        R_value <= R_value - 1;
                        B_value <= B_value + 1;
                    else
                        state <= 1;
                    end if;

                -- G ascendente, B descendente
                when 1 =>
                    if G_value < 65 then
                        G_value <= G_value + 1;
                        B_value <= B_value - 1;
                    else
                        state <= 2;
                    end if;

                -- G descendente, R ascendente
                when 2 =>
                    if G_value > 0 then
                        G_value <= G_value - 1;
                        R_value <= R_value + 1;
                    else
                        state <= 0;
                    end if;

                when others =>
                    state <= 0;
            end case;
        end if;
    end process;

    -- Asignación de valores RGB combinados a la salida
    RGB_out <= std_logic_vector(to_unsigned(R_value, 6)) &
               std_logic_vector(to_unsigned(G_value, 6)) &
               std_logic_vector(to_unsigned(B_value, 6));

end Behavioral;


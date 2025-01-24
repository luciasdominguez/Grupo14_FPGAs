----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.01.2025 11:26:05
-- Design Name: 
-- Module Name: modo_manual - Behavioral
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

entity rgb_intensity_manager is
    Port (
      clk              : in std_logic;                 
      reset            : in std_logic;               
      manual_mode_enable : in std_logic;              
      buttons          : in std_logic_vector(4 downto 0);
      RGB_out            : out std_logic_vector(17 downto 0);
      LED_ROJO          : out std_logic;
      LED_VERDE         : out std_logic;
      LED_AZUL          : out std_logic
    );
end rgb_intensity_manager;

architecture Behavioral of rgb_intensity_manager is

    -- Señales para valores actuales y contadores
    signal R_value, G_value, B_value : std_logic_vector(5 downto 0) := (others => '0');
    signal active_var, R_var, G_var, B_var : std_logic;

begin

    -- Proceso principal de selección de color
    --RGB_combined <= R_value & G_value & B_value;
    process(clk, reset)
    begin
        if reset = '0' then
            active_var <= '0';
        elsif rising_edge(clk) then
            if manual_mode_enable = '1' then
                -- Selección de color activo con botones [0], [1], [2]
                if buttons(0) = '1' then
                    active_var <= '1';
                    R_var <= '1'; 
                    G_var <= '0'; 
                    B_var <= '0'; 
                elsif buttons(1) = '1' then
                    active_var <= '1';
                    R_var <= '0'; 
                    G_var <= '1'; 
                    B_var <= '0'; 
                elsif buttons(2) = '1' then
                    active_var <= '1';
                    R_var <= '0'; 
                    G_var <= '0'; 
                    B_var <= '1'; 
                end if;
            end if;
        end if;
    end process;
    -- Asignacion de los valores de cada color tras cada ciclo de reloj
process(clk)
    begin
        if rising_edge(clk) then
            RGB_out <= R_value & G_value & B_value;
        end if;
    end process;

    -- Instanciación de entidades de contadores para R, G, B
    color_counter_r : entity work.color_counter
        port map (
            clk => clk,
            reset => reset,
            increment => buttons(3),
            decrement => buttons(4),
            enable => R_var,
            color_value => R_value
        );

    color_counter_g : entity work.color_counter
        port map (
            clk => clk,
            reset => reset,
            increment => buttons(3),
            decrement => buttons(4),
            enable => G_var,
            color_value => G_value
        );

    color_counter_b : entity work.color_counter
        port map (
            clk => clk,
            reset => reset,
            increment => buttons(3),
            decrement => buttons(4),
            enable => B_var,
            color_value => B_value
        );

    led_ROJO  <= R_var;
    led_VERDE <= G_var;
    led_AZUL  <= B_var;

end Behavioral;

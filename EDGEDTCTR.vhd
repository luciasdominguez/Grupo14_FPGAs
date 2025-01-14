library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detector_flanco is
    port (
        CLK     : in std_logic;
        RST     : in std_logic;
        SYNC_IN : in std_logic_vector(7 downto 0);
        EDGE    : out std_logic_vector(7 downto 0) -- Guarda en qué bits se ha obtenido un flanco positivo
    );
end detector_flanco;

architecture BEHAVIORAL of detector_flanco is
    -- Para almacenar el valor anterior
    -- Botones: 5 primeros bits (guarda valor anterior)
    signal sreg_buttons : std_logic_vector(4 downto 0) := (others => '0');
    -- Switches: 3 últimos bits (guarda valor anterior)
    signal sreg_switches : std_logic_vector(2 downto 0) := (others => '0');
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            sreg_buttons  <= (others => '0');
            sreg_switches <= (others => '0');
            EDGE          <= (others => '0');
        elsif rising_edge(CLK) then
            -- Flancos de "subida" de botones
            EDGE(4 downto 0) <= (SYNC_IN(4 downto 0) and not sreg_buttons);
            -- Flancos de subida y bajada de switches
            EDGE(7 downto 5) <= (SYNC_IN(7 downto 5) xor sreg_switches);
            sreg_buttons  <= SYNC_IN(4 downto 0); -- Valores actuales de los botones
            sreg_switches <= SYNC_IN(7 downto 5); -- Valores actuales de los swithces 
        end if;
    end process;
end BEHAVIORAL;


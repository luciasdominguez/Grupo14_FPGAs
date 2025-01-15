library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sincronizador is
    port (
        CLK : in std_logic;
        RST : in std_logic;
        ASYNC_IN : in std_logic_vector(7 downto 0);
        SYNC_OUT : out std_logic_vector(7 downto 0)
     );
end sincronizador;

architecture BEHAVIORAL of sincronizador is
    signal sync_reg_1 : std_logic_vector(7 downto 0) := (others => '0');
    signal sync_reg_2 : std_logic_vector(7 downto 0) := (others => '0');
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            sync_reg_1 <= (others => '0');
            sync_reg_2 <= (others => '0');
        elsif rising_edge(CLK) then
            sync_reg_1 <= ASYNC_IN;
            sync_reg_2 <= sync_reg_1;
        end if;
    end process;
    
    SYNC_OUT <= sync_reg_2;
end BEHAVIORAL;


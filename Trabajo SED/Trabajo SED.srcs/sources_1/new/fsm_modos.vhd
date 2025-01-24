library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_modos is
    Port(
        CLK               : in std_logic;
        RST               : in std_logic;
        STATE_MODE        : in std_logic_vector(1 downto 0);
        ENABLE_MANUAL     : out std_logic;
        ENABLE_AUTOMATICO : out std_logic
    );
end fsm_modos;

architecture Behavioral of fsm_modos is
   
begin
   process(CLK,RST)
   begin
        if(rising_edge(CLK)) then
            if(STATE_MODE(0) = STATE_MODE(1)) then
                ENABLE_MANUAL <= '0';
                ENABLE_AUTOMATICO <= '0';
            elsif(STATE_MODE(0) = '1') then
                ENABLE_MANUAL <= '1';
                ENABLE_AUTOMATICO <= '0';
            elsif(STATE_MODE(1) = '1') then
                ENABLE_MANUAL <= '0';
                ENABLE_AUTOMATICO <= '1';
            else
                ENABLE_MANUAL <= '0';
                ENABLE_AUTOMATICO <= '0';
            end if;
        end if;
        
        if(RST = '0') then
            ENABLE_MANUAL <= '0';
            ENABLE_AUTOMATICO <= '0';
        end if;
   end process;
    
end Behavioral;

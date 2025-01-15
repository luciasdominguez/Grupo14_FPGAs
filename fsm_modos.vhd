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
    type STATES is (S0, S1, S2, S3);
    -- S0: Reposo (00), S1: Manual (01), S2: Automático (10), S3: Reposo (11)
    signal current_state: STATES := S0;
    signal next_state   : STATES;
begin
    state_register : process (RST, CLK)
    begin
        if rising_edge(CLK) then
            if RST = '0' then
                current_state <= S0;
            else
                current_state <= next_state;
            end if;
        end if;
    end process;
    
    -- Lógica próximo estado
    nextstate : process (STATE_MODE, current_state)
    begin
        case STATE_MODE is
            when "00" => next_state <= S0;
            when "01" => next_state <= S1;
            when "10" => next_state <= S2;
            when "11" => next_state <= S3;
        end case;
    end process;
    
    -- Lógica de salida
    output_logic : process (current_state)
    begin
--        ENABLE_MANUAL     <= '0';
--        ENABLE_AUTOMATICO <= '0';
--        next_state <= current_state;
        
        case current_state is
            when S0 => -- Estados de reposo
                ENABLE_MANUAL     <= '0';
                ENABLE_AUTOMATICO <= '0';
            when S1 => -- Estado manual
                ENABLE_MANUAL     <= '1';
                ENABLE_AUTOMATICO <= '0';
            when S2 => -- Estado automático
                ENABLE_MANUAL     <= '0';
                ENABLE_AUTOMATICO <= '1';
            when S3 => -- Estado de reposo
                ENABLE_MANUAL     <= '0';
                ENABLE_AUTOMATICO <= '0';
            when others => -- Estados de reposo
                ENABLE_MANUAL     <= '0';
                ENABLE_AUTOMATICO <= '0';
        end case;
    end process;
    
end Behavioral;

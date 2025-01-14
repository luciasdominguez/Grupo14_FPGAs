library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_fsm is
    Port(
        RST     : in std_logic;
        CLK     : in std_logic;
        BUTTONS : in std_logic_vector(4 downto 0);
        SWITCH  : in std_logic_vector(1 downto 0);
        COLORES : out std_logic_vector(17 downto 0)
    );
end top_fsm;

architecture Behavioral of top_fsm is
    component fsm_modos is
        Port(
            CLK               : in std_logic;
            RST               : in std_logic;
            STATE_MODE        : in std_logic_vector(1 downto 0);
            ENABLE_MANUAL     : out std_logic;
            ENABLE_AUTOMATICO : out std_logic
            );
    end component;
    
    component fsm_manual is
        Port(
            CLK             : in std_logic;  
            RST             : in std_logic;
            ENABLE_MANUAL   : in std_logic;
            BUTTONS         : in std_logic_vector(4 downto 0);
            RGB_OUT         : out std_logic_vector(17 downto 0)
        );
    end component;
    
    component fsm_automatico is
        Port(
            CLK                 : in std_logic;  
            RST                 : in std_logic;
            ENABLE_AUTOMATICO   : in std_logic;
            RGB_OUT             : out std_logic_vector(17 downto 0)
        );
    end component;
    
    signal enable_man   : std_logic;
    signal enable_auto  : std_logic;
    signal rgb_manual   : std_logic_vector(17 downto 0);
    signal rgb_auto     : std_logic_vector(17 downto 0);
    
begin

    fsm_modos_combined: fsm_modos
        Port map(
            CLK               =>    CLK,
            RST               =>    RST,
            STATE_MODE        =>    SWITCH,
            ENABLE_MANUAL     =>    enable_man,
            ENABLE_AUTOMATICO =>    enable_auto
        );

    fsm_manual_combined: fsm_manual
        Port map(
            CLK             =>  CLK,
            RST             =>  RST,
            ENABLE_MANUAL   =>  enable_auto,
            BUTTONS         =>  BUTTONS,
            RGB_OUT         =>  rgb_manual
        );
        
     fsm_automatico_combined: fsm_automatico
        Port map(
            CLK                 =>  CLK,
            RST                 =>  RST,
            ENABLE_AUTOMATICO   =>  enable_auto,
            RGB_OUT             =>  rgb_auto
        );
        
   -- Asignación de la salida final
 process(enable_man, enable_auto, rgb_manual, rgb_auto)
    begin
        if enable_man = '1' then
            COLORES <= rgb_manual; -- Salida de la máquina manual
        elsif enable_auto = '1' then
            COLORES <= rgb_auto; -- Salida de la máquina automática
        else
            COLORES <= (others => '0'); -- Salida en reposo
        end if;
    end process;

end Behavioral;

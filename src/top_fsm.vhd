library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_fsm is
    Port(
        RST     : in std_logic;
        CLK     : in std_logic;
        BUTTONS : in std_logic_vector(4 downto 0);
        SWITCH  : in std_logic_vector(1 downto 0);
        COLORES : out std_logic_vector(17 downto 0);
        LED_MAN : out std_logic;
        LED_R   : out std_logic;
        LED_G   : out std_logic;
        LED_B   : out std_logic
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
    
    component rgb_intensity_manager is
        Port(
            clk                 : in std_logic;                 
            reset               : in std_logic;               
            manual_mode_enable  : in std_logic;              
            buttons             : in std_logic_vector(4 downto 0);
            RGB_out             : out std_logic_vector(17 downto 0);
            LED_ROJO          : out std_logic;
            LED_VERDE         : out std_logic;
            LED_AZUL          : out std_logic
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

    LED_MAN <= enable_man;

    fsm_manual_combined: rgb_intensity_manager
        Port map(
            clk             =>  CLK,
            reset             =>  RST,
            manual_mode_enable   =>  enable_man,
            buttons         =>  BUTTONS,
            RGB_out         =>  rgb_manual,
            LED_ROJO        => LED_R,
            LED_VERDE       => LED_G,
            LED_AZUL        => LED_B
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

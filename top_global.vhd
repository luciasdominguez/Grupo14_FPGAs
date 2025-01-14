library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top_entity_global is
    Port (
        CLK        : in STD_LOGIC;                      -- Reloj global
        RST        : in STD_LOGIC;                      -- Reset global
        BTN        : in STD_LOGIC_VECTOR(4 downto 0);   -- Botones de entrada
        SW         : in STD_LOGIC_VECTOR(2 downto 0);   -- Switches de entrada
        RGB        : out STD_LOGIC_VECTOR(2 downto 0);
        DISP       : out STD_LOGIC_VECTOR(6 downto 0);
        AN_DISP    : out STD_LOGIC_VECTOR(5 downto 0);
        AN_EMPTY   : out STD_LOGIC_VECTOR(1 downto 0)
    );
end top_entity_global;

architecture Behavioral of gestor_entradas is
    component gestor_entradas is
        Port (
            CLK        : in STD_LOGIC;                      -- Reloj global
            RST        : in STD_LOGIC;                      -- Reset global
            BTN        : in STD_LOGIC_VECTOR(4 downto 0);   -- Botones de entrada
            SW         : in STD_LOGIC_VECTOR(2 downto 0);   -- Switches de entrada
            STATE_MODE : out STD_LOGIC_VECTOR(1 downto 0);  -- Estado del modo
            BLINK_MODE : out STD_LOGIC;                     -- Modo parpadeo
            BTN_OUT    : out STD_LOGIC_VECTOR(4 downto 0)   -- Botones sincronizados hacia la máquina de estados manual
        );
    end component;
    
    component top_fsm is
        Port(
            RST     : in std_logic;
            CLK     : in std_logic;
            BUTTONS : in std_logic_vector(4 downto 0);
            SWITCH  : in std_logic_vector(1 downto 0);
            COLORES : out std_logic_vector(17 downto 0)
        );
    end component;
    
    component GestorSalidas is
        Port ( 
            CLK            : in STD_LOGIC;                       -- Reloj de sistema
            LED_in         : in STD_LOGIC_VECTOR (17 downto 0);  -- Entrada (valores de los led del RGB)
            SW_Parpadeo    : in STD_LOGIC;                       -- Switch que controla el parpadeo de los led
            RGB            : out STD_LOGIC_VECTOR (2 downto 0);  -- 1 LED RGB
                                                                 -- R = bit 0, G = bit 1, B = bit 2
            DISP           : out STD_LOGIC_VECTOR (6 downto 0);  -- Numero Display 7 segmentos
            AN_DISP        : out STD_LOGIC_VECTOR (5 downto 0);  -- Ánodo del Display a usar
            AN_EMPTY       : out STD_LOGIC_VECTOR (1 downto 0)   --Anodo de Displays sin usar
        );
    end component;
    
    signal estado       : std_logic_vector(1 downto 0);
    signal parpadeo     : std_logic;
    signal buttons      : std_logic_vector(4 downto 0);
    signal rgb_out      : std_logic_vector(7 downto 0);
    signal rgb          : std_logic_vector (2 downto 0);
    signal disp         : std_logic_vector (6 downto 0);  -- Numero Display 7 segmentos
    signal an_disp      : std_logic_vector (5 downto 0);  -- Ánodo del Display a usar
    signal an_empty     : std_logic_vector (1 downto 0);  -- Ánodo de Displays sin usar
    
begin
    gestor_entradas_top: gestor_entradas
        Port map(
            CLK        =>   CLK,
            RST        =>   RST,
            BTN        =>   BTN,
            SW         =>   SW,
            STATE_MODE =>   estado,
            BLINK_MODE =>   parpadeo,
            BTN_OUT    =>   buttons
        );
        
    top_fsm_top: top_fsm
        Port map(
            RST     =>  RST,
            CLK     =>  CLK,
            BUTTONS =>  buttons,
            SWITCH  =>  SW,
            COLORES =>  rgb_out
        );
    
    Gestor_Salidas_top: GestorSalidas
        Port map( 
            CLK           =>    CLK,
            LED_in        =>    rbg_out,
            SW_Parpadeo   =>    parpadeo,
            RGB           =>    rgb,
            DISP          =>    disp,
            AN_DISP       =>    an_disp,
            AN_EMPTY      =>    an_empty
        );
    
end Behavioral;
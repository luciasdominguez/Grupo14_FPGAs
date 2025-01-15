library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity gestor_entradas is
    Port (
        CLK        : in STD_LOGIC;                      -- Reloj global
        RST        : in STD_LOGIC;                      -- Reset global
        BTN        : in STD_LOGIC_VECTOR(4 downto 0);   -- Botones de entrada
        SW         : in STD_LOGIC_VECTOR(2 downto 0);   -- Switches de entrada
        STATE_MODE : out STD_LOGIC_VECTOR(1 downto 0);  -- Estado del modo
        BLINK_MODE : out STD_LOGIC;                     -- Modo parpadeo
        BTN_OUT    : out STD_LOGIC_VECTOR(4 downto 0)   -- Botones sincronizados hacia la máquina de estados manual
    );
end gestor_entradas;

architecture Behavioral of gestor_entradas is

    -- Componentes internos: Sincronizador y Detector de flanco
    component sincronizador is
        Port (
            CLK      : in STD_LOGIC;
            RST      : in STD_LOGIC;
            ASYNC_IN : in STD_LOGIC_VECTOR(7 downto 0);
            SYNC_OUT : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    component detector_flanco is
        Port (
            CLK      : in STD_LOGIC;
            RST      : in STD_LOGIC;
            SYNC_IN  : in STD_LOGIC_VECTOR(7 downto 0);
            EDGE     : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    -- Señales internas para interconexión
    signal combined_in     : STD_LOGIC_VECTOR(7 downto 0);
    signal combined_synced : STD_LOGIC_VECTOR(7 downto 0);
    signal combined_edge   : STD_LOGIC_VECTOR(7 downto 0);
    signal btn_edge        : STD_LOGIC_VECTOR(4 downto 0);
    signal sw_edge         : STD_LOGIC_VECTOR(2 downto 0);

begin

    -- Concatenar entradas de botones y switches
    combined_in <= BTN & SW;

    -- Instancia del sincronizador para botones y switches combinados
    sincronizador_combined: sincronizador
        Port map (
            CLK       => CLK,
            RST       => RST,
            ASYNC_IN  => combined_in,
            SYNC_OUT  => combined_synced
        );

    -- Instancia del detector de flanco para botones y switches combinados
    detector_flanco_combined: detector_flanco
        Port map (
            CLK      => CLK,
            RST      => RST,
            SYNC_IN  =>combined_synced,
            EDGE     => combined_edge
        );

    -- Separar los flancos detectados
    btn_edge <= combined_edge(7 downto 3);
    sw_edge  <= combined_edge(2 downto 0);

--    -- Lógica para determinar el estado del modo utilizando flancos
--    process(sw_edge)
--    begin
--        if sw_edge(2) = '1' and sw_edge(1) = '0' then
--            state_mode <= "10"; -- Modo automático
--        elsif sw_edge(2) = '0' and sw_edge(1) = '1' then
--            state_mode <= "01"; -- Modo manual
--        else
--            state_mode <= "00"; -- Reposo
--        end if;
--    end process;

    -- El bit de parpadeo utilizando el flanco del switch correspondiente
    BLINK_MODE <= sw_edge(0);
    STATE_MODE <= sw_edge(2 downto 1);
    -- Salida de los botones con flanco detectado
    BTN_OUT <= btn_edge;

end Behavioral;

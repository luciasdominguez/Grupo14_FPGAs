----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2025 19:13:19
-- Design Name: 
-- Module Name: GestorSalidas - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GestorSalidas is
    Port ( CLK            : in STD_LOGIC;                       -- Reloj de sistema
           LED_in         : in STD_LOGIC_VECTOR (17 downto 0);  -- Entrada (valores de los led del RGB)
           SW_Parpadeo    : in STD_LOGIC;                       -- Switch que controla el parpadeo de los led
           RGB            : out STD_LOGIC_VECTOR (2 downto 0);  -- 1 LED RGB
                                                                -- R = bit 0, G = bit 1, B = bit 2
           DISP_R         : out STD_LOGIC_VECTOR (13 downto 0); -- Dos displays 7 segmentos
           DISP_G         : out STD_LOGIC_VECTOR (13 downto 0); -- Dos displays 7 segmentos
           DISP_B         : out STD_LOGIC_VECTOR (13 downto 0)  -- Dos displays 7 segmentos
           );
end GestorSalidas;

architecture Estructural of GestorSalidas is
    -- Definición de componentes
    Component ModuladorPWM is
        Port ( D    : in STD_LOGIC_VECTOR (5 downto 0); --Vector que define el ciclo de trabajo D. Toma valores de 0 a 64 (6bit)
               CLK  : in STD_LOGIC; -- Reloj del sistema. El periodo del PWM estará definido por 1/64 veces esta señal
               Vout : out STD_LOGIC -- Señal de salida
              );              
    end component;
    
    Component GestorParpadeo is
        Port ( Vin : in STD_LOGIC_VECTOR(2 downto 0); --Entrada que enviaremos al LED tras ser procesada
               SW_Parpadeo : in STD_LOGIC; --Switch de Control del parpadeo
               CLK : in STD_LOGIC; --Reloj del sistema
               LED : out STD_LOGIC_VECTOR(2 downto 0)); --Señal de salida hacia el LED
    end component;
    
    component GestionSieteSegmentos is
        Port ( BIN : in STD_LOGIC_VECTOR (5 downto 0);
               CLK : in STD_LOGIC;
               DISP : out STD_LOGIC_VECTOR (13 downto 0));
    end component;
    
    -- Definición de señales intermedias
    signal RGB_PWM : std_logic_vector(2 downto 0); -- Señal PWM para los LED, mismo criterio que en la salida
    
    begin
    -- Señales PWM para alimentar el LED
    Modulador_R : ModuladorPWM
        port map(
            D => LED_in(5 downto 0),
            CLK => CLK,
            Vout => RGB_PWM(0)
        );
    Modulador_G : ModuladorPWM
        port map(
            D => LED_in(11 downto 6),
            CLK => CLK,
            Vout => RGB_PWM(1)
        );
    Modulador_B : ModuladorPWM
        port map(
            D => LED_in(17 downto 12),
            CLK => CLK,
            Vout => RGB_PWM(2)
        );
        
    -- Gestor del parpadeo
    Parpadeo : GestorParpadeo
        port map(
            Vin => RGB_PWM,
            SW_Parpadeo => SW_Parpadeo,
            CLK => CLK,
            LED => RGB
        );
        
     -- Displays del valor de color en 7 segmentos
     Display_r : GestionSieteSegmentos
        port map(
            BIN => LED_in(5 downto 0),
            CLK => CLK,
            DISP => DISP_R
        );
     Display_g : GestionSieteSegmentos
        port map(
            BIN => LED_in(11 downto 6),
            CLK => CLK,
            DISP => DISP_G
        );
     Display_b : GestionSieteSegmentos
        port map(
            BIN => LED_in(17 downto 12),
            CLK => CLK,
            DISP => DISP_B
        );              
end Estructural;

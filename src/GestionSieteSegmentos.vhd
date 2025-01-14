----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2025 19:46:41
-- Design Name: 
-- Module Name: GestionSieteSegmentos - Behavioral
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

entity GestionSieteSegmentos is
    Port ( BIN      : in STD_LOGIC_VECTOR (17 downto 0);
           CLK      : in STD_LOGIC;
           DISP     : out STD_LOGIC_VECTOR (6 downto 0);
           ENABLE   : out STD_LOGIC_VECTOR (5 downto 0)
          );
end GestionSieteSegmentos;

architecture Behavioral of GestionSieteSegmentos is

    component ConversorBCD is
        Port ( BIN   : in STD_LOGIC_VECTOR (5 downto 0);
               CLK   : in std_logic;
               BCD   : out STD_LOGIC_VECTOR (7 downto 0)
               );
    end component;
    
    component DecoderBCD is
        Port ( code : in STD_LOGIC_VECTOR (3 downto 0);
               led : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    component DivisorFrecuencia is 
        generic(
            F_in : integer := 100000000; --Hz
            F_out : integer := 2 --Hz
        );
        Port ( 
            CLK_in      : in STD_LOGIC; --Reloj de entrada
            CLK_out     : out std_logic --Reloj de salida
        ); 
    end component;
    
    component counter is
        Port ( 
           CLK  : in STD_LOGIC;
           CODE : out STD_LOGIC_VECTOR (2 downto 0)
         );
    end component;
    
    signal BCD_R : std_logic_vector(7 downto 0);
    signal BCD_G : std_logic_vector(7 downto 0);
    signal BCD_B : std_logic_vector(7 downto 0);
    
    signal BCD   : std_logic_vector(3 downto 0); --Codigo en BCD del digito actual
    
    signal CLK_1KHZ : std_logic;
    
    signal count : std_logic_vector(2 downto 0);
    
    begin
    
    Frecuencia : DivisorFrecuencia
        generic map(
            F_in => 100000000, --Hz
            F_out => 1000 --Hz
        )
        port map(
            CLK_in => CLK,
            CLK_out => CLK_1KHZ
        );
        
    Conversor_R : ConversorBCD
        port map(
            BIN => BIN(5 downto 0),
            CLK => CLK,
            BCD => BCD_R
        );
    
    Conversor_G : ConversorBCD
        port map(
            BIN => BIN(11 downto 6),
            CLK => CLK,
            BCD => BCD_G
        );
    
    Conversor_B : ConversorBCD
        port map(
            BIN => BIN(17 downto 12),
            CLK => CLK,
            BCD => BCD_B
        );
    
    DIGITO : DecoderBCD 
        port map(
            code => BCD,
            led => DISP(6 downto 0)
        );
    
    c : counter
        port map(
            CLK => CLK_1KHZ,
            CODE => count
        );
        
    with count select
        BCD <=    BCD_R(3 downto 0) WHEN "000",
                  BCD_R(7 downto 4) WHEN "001",
                  BCD_G(3 downto 0) WHEN "010",
                  BCD_G(7 downto 4) WHEN "011",
                  BCD_B(3 downto 0) WHEN "100",
                  BCD_B(7 downto 4) WHEN "101",
                        "0000"      WHEN others;
                  
    with count select
        ENABLE <=  "111110" WHEN "000",
                   "111101" WHEN "001",
                   "111011" WHEN "010",
                   "110111" WHEN "011",
                   "101111" WHEN "100",
                   "011111" WHEN "101",
                   "111111" WHEN others;            
end Behavioral;

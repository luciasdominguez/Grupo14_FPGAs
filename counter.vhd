library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity counter is
    Port ( 
           CLK  : in STD_LOGIC;
           CODE : out STD_LOGIC_VECTOR (2 downto 0)
         );
end counter;

architecture Behavioral of counter is
    signal count : unsigned(2 downto 0);
begin
    process(CLK)
    begin
        if rising_edge(CLK)then
            count <= count + 1;
        end if;
        
        if count > "110" then 
            count <= "000";
        end if;
        
        CODE <= std_logic_vector(count);
    
    end process;
end Behavioral;

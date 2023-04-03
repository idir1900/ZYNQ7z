---------------------------------------------------------------------------------- 
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2023 09:46:36 PM
-- Design Name: 
-- Module Name: diviseur - Behavioral
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

use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity diviseur is
    Port ( clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC;
           choix : in STD_LOGIC_VECTOR (3 downto 0));
end diviseur;

architecture Behavioral of diviseur is
signal sig_choix : std_logic_vector (3 downto 0):=(others=>'0');
signal  div : INTEGER RANGE 0 TO (2**25);
signal D_clk : std_logic ;
begin

sig_choix<=choix;
clk_out<=d_clk;
process(clk_in) 

variable counter :  integer := 0;
begin

if rising_edge(clk_in) then 
    counter := counter +1;
    if sig_choix = "0000" then 
        div <= 1;
    elsif sig_choix = "0001" then 
       div <= 2;
     elsif sig_choix = "0010" then 
       div <= 4;
      elsif sig_choix = "0100" then 
       div <= 8;
      elsif sig_choix = "1000" then 
       div <= 16;
      else 
        div<=1;
    end if;
    
    if counter >= div then 
        d_clk <= not(d_clk);
        counter := 0;
    end if;
  

end if;
end process;
end Behavioral;

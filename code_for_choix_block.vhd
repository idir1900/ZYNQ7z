---------------------------------------------------------------------------------- 
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/04/2023 01:55:57 PM
-- Design Name: 
-- Module Name: choix_signal - Behavioral
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity choix is
    Port ( 
           clk_sys : in STD_LOGIC;
           choix_in : in STD_LOGIC_vector(2 downto 0);
           choix_out1 : out STD_LOGIC;
           choix_out2 : out STD_LOGIC;
           choix_out3 : out STD_LOGIC);
end choix;

architecture Behavioral of choix is
signal ch_in : std_logic_vector(2 downto 0);
signal ch_out1 :std_logic :='0';
signal ch_out2: std_logic :='0';
signal ch_out3: std_logic :='0';
begin
ch_in<=choix_in;
choix_out1<=ch_out1;
choix_out2<=ch_out2;
choix_out3<=ch_out3;

process(clk_sys)
begin 

if rising_edge(clk_sys) then 
     if ch_in = "001" then 
        ch_out1<= '1';
     elsif ch_in= "010" then
        ch_out2 <= '1';
     elsif ch_in ="100" then
        ch_out3 <= '1';
        else 
        ch_out1<= '0';
        ch_out2<= '0';
        ch_out3<='0';
     end if;
end if;
end process;
end Behavioral;

    

-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2023 02:10:10 PM
-- Design Name: 
-- Module Name: multi - Behavioral
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

entity multi is
    Port ( clk : in std_logic;
           ch1 : in STD_LOGIC;
           ch2 : in STD_LOGIC;
           ch3 : in STD_LOGIC;
           dout1 : in STD_LOGIC_VECTOR (7 downto 0);
           dout2 : in STD_LOGIC_VECTOR (7 downto 0);
           dout3 : in STD_LOGIC_VECTOR (7 downto 0);
           ad : out STD_LOGIC_VECTOR (7 downto 0));
end multi;

architecture Behavioral of multi is
signal ch1_1 : std_logic :='0';
signal ch2_2 : std_logic :='0';
signal ch3_3 : std_logic :='0';
signal dout1_1 : std_logic_vector (7 downto 0) :="00000000";
signal dout2_2 : std_logic_vector (7 downto 0) :="00000000";
signal dout3_3 : std_logic_vector (7 downto 0) :="00000000";
signal ad_inter : std_logic_vector (7 downto 0):="00000000";
begin
ad<= ad_inter;
ch1_1 <= ch1;
ch2_2 <= ch2;
ch3_3 <= ch3;
dout1_1<=dout1;
dout2_2<=dout2;
dout3_3<=dout3;

process(clk)
begin 
if rising_edge(clk) then 
    if ch1_1 = '1' then 
        ad_inter <= dout1_1;
    elsif ch2_2 ='1' then 
        ad_inter <= dout2_2;
    elsif ch3_3 ='1' then 
        ad_inter <= dout3_3;
    else 
    ad_inter <="00000000";
    end if;
end if;
end process;
end Behavioral;

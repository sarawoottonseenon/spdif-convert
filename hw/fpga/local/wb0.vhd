-- Generated by PERL program wishbone.pl. Do not edit this file.
--
-- For defines see wishbone0.defines
--
-- Generated Fri Aug 24 22:19:46 2012
--
-- Wishbone masters:
--   wb0m0
--
-- Wishbone slaves:
--   wb0s0
--     baseadr 0x0000 - size 0x1000
--   wb0s1
--     baseadr 0x1000 - size 0x0080
--   wb0s2
--     baseadr 0x2000 - size 0x0020
--   wb0s3
--     baseadr 0x3000 - size 0x0020
--   wb0s4
--     baseadr 0x4000 - size 0x0004
--   wb0s5
--     baseadr 0x5000 - size 0x0002
--   wb0s6
--     baseadr 0x6000 - size 0x0010
--   wb0s7
--     baseadr 0x7000 - size 0x1000
--   wb0s8
--     baseadr 0x8000 - size 0x1000
-----------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

package intercon0_package is


function "and" (
  l : std_logic_vector;
  r : std_logic)
return std_logic_vector;
end intercon0_package;
package body intercon0_package is

function "and" (
  l : std_logic_vector;
  r : std_logic)
return std_logic_vector is
  variable result : std_logic_vector(l'range);
begin  -- "and"
  for i in l'range loop
  result(i) := l(i) and r;
end loop;  -- i
return result;
end "and";
end intercon0_package;

library IEEE;
use IEEE.std_logic_1164.all;
use work.intercon0_package.all;

entity intercon0 is
  port (
  -- wishbone master port(s)
  -- wb0m0
  wb0m0_dat_i : out std_logic_vector(31 downto 0);
  wb0m0_ack_i : out std_logic;
  wb0m0_dat_o : in  std_logic_vector(31 downto 0);
  wb0m0_we_o  : in  std_logic;
  wb0m0_sel_o : in  std_logic_vector(3 downto 0);
  wb0m0_adr_o : in  std_logic_vector(15 downto 0);
  wb0m0_cyc_o : in  std_logic;
  wb0m0_stb_o : in  std_logic;
  -- wishbone slave port(s)
  -- wb0s0
  wb0s0_dat_o : in  std_logic_vector(31 downto 0);
  wb0s0_ack_o : in  std_logic;
  wb0s0_dat_i : out std_logic_vector(31 downto 0);
  wb0s0_we_i  : out std_logic;
  wb0s0_sel_i : out std_logic_vector(3 downto 0);
  wb0s0_adr_i : out std_logic_vector(15 downto 0);
  wb0s0_cyc_i : out std_logic;
  wb0s0_stb_i : out std_logic;
  -- wb0s1
  wb0s1_dat_o : in  std_logic_vector(31 downto 0);
  wb0s1_ack_o : in  std_logic;
  wb0s1_err_o : in  std_logic;
  wb0s1_dat_i : out std_logic_vector(31 downto 0);
  wb0s1_we_i  : out std_logic;
  wb0s1_sel_i : out std_logic_vector(3 downto 0);
  wb0s1_adr_i : out std_logic_vector(15 downto 0);
  wb0s1_cyc_i : out std_logic;
  wb0s1_stb_i : out std_logic;
  -- wb0s2
  wb0s2_dat_o : in  std_logic_vector(31 downto 0);
  wb0s2_ack_o : in  std_logic;
  wb0s2_dat_i : out std_logic_vector(31 downto 0);
  wb0s2_we_i  : out std_logic;
  wb0s2_sel_i : out std_logic_vector(3 downto 0);
  wb0s2_adr_i : out std_logic_vector(15 downto 0);
  wb0s2_cyc_i : out std_logic;
  wb0s2_stb_i : out std_logic;
  -- wb0s3
  wb0s3_dat_o : in  std_logic_vector(31 downto 0);
  wb0s3_ack_o : in  std_logic;
  wb0s3_err_o : in  std_logic;
  wb0s3_dat_i : out std_logic_vector(31 downto 0);
  wb0s3_we_i  : out std_logic;
  wb0s3_sel_i : out std_logic_vector(3 downto 0);
  wb0s3_adr_i : out std_logic_vector(15 downto 0);
  wb0s3_cyc_i : out std_logic;
  wb0s3_stb_i : out std_logic;
  -- wb0s4
  wb0s4_dat_o : in  std_logic_vector(31 downto 0);
  wb0s4_ack_o : in  std_logic;
  wb0s4_dat_i : out std_logic_vector(31 downto 0);
  wb0s4_we_i  : out std_logic;
  wb0s4_sel_i : out std_logic_vector(3 downto 0);
  wb0s4_adr_i : out std_logic_vector(15 downto 0);
  wb0s4_cyc_i : out std_logic;
  wb0s4_stb_i : out std_logic;
  -- wb0s5
  wb0s5_dat_o : in  std_logic_vector(31 downto 0);
  wb0s5_ack_o : in  std_logic;
  wb0s5_dat_i : out std_logic_vector(31 downto 0);
  wb0s5_we_i  : out std_logic;
  wb0s5_sel_i : out std_logic_vector(3 downto 0);
  wb0s5_adr_i : out std_logic_vector(15 downto 0);
  wb0s5_cti_i : out std_logic_vector(2 downto 0);
  wb0s5_bte_i : out std_logic_vector(1 downto 0);
  wb0s5_cyc_i : out std_logic;
  wb0s5_stb_i : out std_logic;
  -- wb0s6
  wb0s6_dat_o : in  std_logic_vector(31 downto 0);
  wb0s6_ack_o : in  std_logic;
  wb0s6_dat_i : out std_logic_vector(31 downto 0);
  wb0s6_we_i  : out std_logic;
  wb0s6_sel_i : out std_logic_vector(3 downto 0);
  wb0s6_adr_i : out std_logic_vector(15 downto 0);
  wb0s6_cyc_i : out std_logic;
  wb0s6_stb_i : out std_logic;
  -- wb0s7
  wb0s7_dat_o : in  std_logic_vector(31 downto 0);
  wb0s7_ack_o : in  std_logic;
  wb0s7_dat_i : out std_logic_vector(31 downto 0);
  wb0s7_we_i  : out std_logic;
  wb0s7_sel_i : out std_logic_vector(3 downto 0);
  wb0s7_adr_i : out std_logic_vector(15 downto 2);
  wb0s7_cti_i : out std_logic_vector(2 downto 0);
  wb0s7_bte_i : out std_logic_vector(1 downto 0);
  wb0s7_cyc_i : out std_logic;
  wb0s7_stb_i : out std_logic;
  -- wb0s8
  wb0s8_dat_o : in  std_logic_vector(31 downto 0);
  wb0s8_ack_o : in  std_logic;
  wb0s8_dat_i : out std_logic_vector(31 downto 0);
  wb0s8_we_i  : out std_logic;
  wb0s8_sel_i : out std_logic_vector(3 downto 0);
  wb0s8_adr_i : out std_logic_vector(15 downto 2);
  wb0s8_cti_i : out std_logic_vector(2 downto 0);
  wb0s8_bte_i : out std_logic_vector(1 downto 0);
  wb0s8_cyc_i : out std_logic;
  wb0s8_stb_i : out std_logic;
  -- clock and reset
  clk   : in std_logic;
  reset : in std_logic);
end intercon0;
architecture rtl of intercon0 is
  signal wb0m0_bg : std_logic; -- master bus grant
  signal wb0s0_ss : std_logic; -- slave select
  signal wb0s1_ss : std_logic; -- slave select
  signal wb0s2_ss : std_logic; -- slave select
  signal wb0s3_ss : std_logic; -- slave select
  signal wb0s4_ss : std_logic; -- slave select
  signal wb0s5_ss : std_logic; -- slave select
  signal wb0s6_ss : std_logic; -- slave select
  signal wb0s7_ss : std_logic; -- slave select
  signal wb0s8_ss : std_logic; -- slave select
begin  -- rtl
decoder:block
  signal adr : std_logic_vector(15 downto 0);
begin
wb0m0_bg <= '1';
adr <= (wb0m0_adr_o and wb0m0_bg);
wb0s0_ss <= '1' when adr(15 downto 12)="0000" else
'0';
wb0s1_ss <= '1' when adr(15 downto 7)="000100000" else
'0';
wb0s2_ss <= '1' when adr(15 downto 4)="001000000000" else
'0';
wb0s3_ss <= '1' when adr(15 downto 5)="00110000000" else
'0';
wb0s4_ss <= '1' when adr(15 downto 2)="01000000000000" else
'0';
wb0s5_ss <= '1' when adr(15 downto 1)="010100000000000" else
'0';
wb0s6_ss <= '1' when adr(15 downto 4)="011000000000" else
'0';
wb0s7_ss <= '1' when adr(15 downto 12)="0111" else
'0';
wb0s8_ss <= '1' when adr(15 downto 12)="1000" else
'0';
wb0s0_adr_i <= adr(15 downto 0);
wb0s1_adr_i <= adr(15 downto 0);
wb0s2_adr_i <= adr(15 downto 0);
wb0s3_adr_i <= adr(15 downto 0);
wb0s4_adr_i <= adr(15 downto 0);
wb0s5_adr_i <= adr(15 downto 0);
wb0s6_adr_i <= adr(15 downto 0);
wb0s7_adr_i <= adr(15 downto 2);
wb0s8_adr_i <= adr(15 downto 2);
end block decoder;

mux: block
  signal cyc, stb, we, ack : std_logic;
  signal sel : std_logic_vector(3 downto 0);
  signal dat_m2s, dat_s2m : std_logic_vector(31 downto 0);
begin
cyc <= (wb0m0_cyc_o and wb0m0_bg);
wb0s0_cyc_i <= wb0s0_ss and cyc;
wb0s1_cyc_i <= wb0s1_ss and cyc;
wb0s2_cyc_i <= wb0s2_ss and cyc;
wb0s3_cyc_i <= wb0s3_ss and cyc;
wb0s4_cyc_i <= wb0s4_ss and cyc;
wb0s5_cyc_i <= wb0s5_ss and cyc;
wb0s6_cyc_i <= wb0s6_ss and cyc;
wb0s7_cyc_i <= wb0s7_ss and cyc;
wb0s8_cyc_i <= wb0s8_ss and cyc;
stb <= (wb0m0_stb_o and wb0m0_bg);
wb0s0_stb_i <= stb;
wb0s1_stb_i <= stb;
wb0s2_stb_i <= stb;
wb0s3_stb_i <= stb;
wb0s4_stb_i <= stb;
wb0s5_stb_i <= stb;
wb0s6_stb_i <= stb;
wb0s7_stb_i <= stb;
wb0s8_stb_i <= stb;
we <= (wb0m0_we_o and wb0m0_bg);
wb0s0_we_i <= we;
wb0s1_we_i <= we;
wb0s2_we_i <= we;
wb0s3_we_i <= we;
wb0s4_we_i <= we;
wb0s5_we_i <= we;
wb0s6_we_i <= we;
wb0s7_we_i <= we;
wb0s8_we_i <= we;
ack <= wb0s0_ack_o or wb0s1_ack_o or wb0s2_ack_o or wb0s3_ack_o or wb0s4_ack_o or wb0s5_ack_o or wb0s6_ack_o or wb0s7_ack_o or wb0s8_ack_o;
wb0m0_ack_i <= ack and wb0m0_bg;
sel <= (wb0m0_sel_o and wb0m0_bg);
wb0s0_sel_i <= sel;
wb0s1_sel_i <= sel;
wb0s2_sel_i <= sel;
wb0s3_sel_i <= sel;
wb0s4_sel_i <= sel;
wb0s5_sel_i <= sel;
wb0s6_sel_i <= sel;
wb0s7_sel_i <= sel;
wb0s8_sel_i <= sel;
dat_m2s <= (wb0m0_dat_o and wb0m0_bg);
wb0s0_dat_i <= dat_m2s;
wb0s1_dat_i <= dat_m2s;
wb0s2_dat_i <= dat_m2s;
wb0s3_dat_i <= dat_m2s;
wb0s4_dat_i <= dat_m2s;
wb0s5_dat_i <= dat_m2s;
wb0s6_dat_i <= dat_m2s;
wb0s7_dat_i <= dat_m2s;
wb0s8_dat_i <= dat_m2s;
dat_s2m <= (wb0s0_dat_o and wb0s0_ss) or (wb0s1_dat_o and wb0s1_ss) or (wb0s2_dat_o and wb0s2_ss) or (wb0s3_dat_o and wb0s3_ss) or (wb0s4_dat_o and wb0s4_ss) or (wb0s5_dat_o and wb0s5_ss) or (wb0s6_dat_o and wb0s6_ss) or (wb0s7_dat_o and wb0s7_ss) or (wb0s8_dat_o and wb0s8_ss);
wb0m0_dat_i <= dat_s2m;
wb0s5_cti_i <= "000";
wb0s7_cti_i <= "000";
wb0s8_cti_i <= "000";
wb0s5_bte_i <= (others=>'0');
wb0s7_bte_i <= (others=>'0');
wb0s8_bte_i <= (others=>'0');
end block mux;

end rtl;

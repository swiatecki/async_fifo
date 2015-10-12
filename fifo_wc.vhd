library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity fifo_wc is
  port ( 
  
	wclk				: in std_logic;
	 reset          : in std_logic;
	write_enable	: in std_logic; 
	fifo_occu_in	: out std_logic_vector(4 downto 0):= "00000";
	full				: out std_logic := '0';
	waddr		: out std_logic_vector(3 downto 0);
	wen		: out std_logic;
	wptr		: out std_logic_vector(4 downto 0) := "00000";
	rptr_s	: in std_logic_vector(4 downto 0) := "00000" -- the synchronzied version please
	
  );
end fifo_wc;



architecture fifo_wc_arch of fifo_wc is 

signal wptr_int : std_logic_vector (4 downto 0) := "00000";
signal full_int : std_logic := '0';
signal fifo_occu_in_int : std_logic_vector(4 downto 0) := "00000";


begin

	fifo_occu_in_int <= wptr_int - rptr_s; -- Calculate occupancy

	waddr <= wptr_int(3 downto 0);

	wen <= write_enable and (not full_int); -- prevents wen going high if full!

	wptr <= wptr_int; -- concurrently output the value of _int
	full <= full_int; -- map to output
	
-- TODO: 

full_int <= fifo_occu_in_int(4); -- Only full if occu = 16, hence 10000
fifo_occu_in <= fifo_occu_in_int; -- set the output 

mainLogic : process(reset,wclk)
		begin
			if(reset = '1') then
			-- reset logic
				
				
				wptr_int <= (others => '0');
			
			
			elsif rising_edge(wclk) then
			
				if (write_enable = '1' and full_int = '0') then
				
					--assert false report "adding one..";
					wptr_int <= wptr_int + '1';
					
					
				
				end if;
					
			
			
			end if;
	end process mainLogic;

end fifo_wc_arch;
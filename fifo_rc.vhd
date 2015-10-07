library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity fifo_rc is
  port ( 
  
	rclk				: in std_logic;
	 reset          : in std_logic;
	read_enable	: in std_logic; 
	fifo_occu_out	: out std_logic_vector(4 downto 0);
	empty				: out std_logic; 
	raddr		: out std_logic_vector(3 downto 0);
	ren		: out std_logic;
	rptr		: out std_logic_vector(4 downto 0) := "00000";
	wptr_s	: in std_logic_vector(4 downto 0) := "00000" -- the synchronzied version please
	
	
	
  );
end fifo_rc;



architecture fifo_rc_arch of fifo_rc is 

signal rptr_int : std_logic_vector (4 downto 0) := "00000";
signal empty_int : std_logic := '0';
signal fifo_occu_out_int : std_logic_vector(4 downto 0) := "00000";


begin

empty_int <= not(fifo_occu_out_int(4) or fifo_occu_out_int(3) or fifo_occu_out_int(2) or fifo_occu_out_int(1) or fifo_occu_out_int(0)); -- Only full if occu = 16, hence 10000


concur : process(rptr_int,wptr_s,fifo_occu_out_int,empty_int,read_enable)
begin

	fifo_occu_out_int <= wptr_s - rptr_int; -- Calculate occupancy




	raddr <= rptr_int(3 downto 0);
	ren <= read_enable and not empty_int; -- prevents ren going high if full!

	empty <= empty_int; -- map to output
	fifo_occu_out <= fifo_occu_out_int; -- set the output also
	rptr <= rptr_int; -- concurrently output the value of _int

end process concur;
-- TODO: 


mainLogic : process(reset,rclk)
		begin
			if(reset = '1') then
			-- reset logic
				
				rptr_int <= (others => '0');
				--rptr_int <= (others => '0');
				--fifo_occu_out_int <= (others => '0');
				--fifo_occu_out <= (others => '0');
				--empty <= '0';
				--empty_int <= '0';

			
			elsif rising_edge(rclk) then
			
				if (read_enable = '1' and empty_int = '0') then
				
					rptr_int <= rptr_int + '1';
					
					
				
				end if;
					
			
			
			end if;
	end process mainLogic;
	
	
	
	

end fifo_rc_arch;
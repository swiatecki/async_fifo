library IEEE;
use ieee.std_logic_1164.all;

entity sync is
  port ( 
    reset          : in std_logic;
	inclk				: in std_logic; -- clock on the in-side
	outclk			: in std_logic; -- 
	ptr				: in std_logic_vector(4 downto 0); -- in pointer, 5 long
	ptr_sync		: out std_logic_vector(4 downto 0) -- the synced pointer, 5 long
	
	
  );
end sync;




architecture sync_arch of sync is 

	signal ptr_gray : std_logic_vector(4 downto 0); -- temp signal for holding the gray version of the signal
	signal A,B,C	: std_logic_vector(4 downto 0);

begin


leftside : process(reset,inclk)
		begin
			if(reset = '1') then
			-- reset logic
				
				A <= (others => '0');
				--B <= (others => '0');
				--C <= (others => '0');
				--ptr_gray <= (others => '0');
				
				
				
			elsif rising_edge(inclk) then
			
				-- actual logic for right side
				
				A <= ptr_gray;
							
				
			end if;
	end process leftside;
	
	
	rightside : process(reset,outclk)
		begin
			if(reset = '1') then
			-- reset logic
				
				B <= (others => '0');
				C <= (others => '0');
				
			elsif rising_edge(outclk) then
			
				-- acutal logic
					
					B <= A;
					
					C <= B;
					
			
			
			end if;
	end process rightside;
	
	
	--------------------------------
bin2gray : process(ptr)

	-- Converts from binary to graycode
	begin
	
	ptr_gray(4) <= ptr(4);
	ptr_gray(3 downto 0) <= ptr(4 downto 1) xor ptr(3 downto 0);
	
	
end process bin2gray;
	
	-----------------------------------
gray2bin : process(C)

		-- converts from graycode to binary
		
		variable tmp : std_logic_vector(4 downto 0);
		
	begin
	
	tmp(4) := C(4);
	tmp(3) := tmp(4) xor C(3);
	tmp(2) := tmp(3) xor C(2);
	tmp(1) := tmp(2) xor C(1);
	tmp(0) := tmp(1) xor C(0);
		
	ptr_sync <= tmp;

	
	end process gray2bin;

end sync_arch;
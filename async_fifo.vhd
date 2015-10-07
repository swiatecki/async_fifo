library IEEE;
use ieee.std_logic_1164.all;

entity async_fifo is
  port ( 
    reset          : in std_logic;
    wclk           : in std_logic;
    rclk           : in std_logic;
    write_enable   : in std_logic;
    read_enable    : in std_logic;
    fifo_occu_in   : out std_logic_vector(4 downto 0);
    fifo_occu_out  : out std_logic_vector(4 downto 0);
    write_data_in  : in std_logic_vector(7 downto 0);
    read_data_out  : out std_logic_vector(7 downto 0);
	 full : out std_logic;
	 empty : out std_logic
  );
end async_fifo;

architecture async_fifo_arch of async_fifo is

-- import our RAM
component nsram
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		rden		: IN STD_LOGIC  := '1';
		wraddress		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

--

-- import our wc
COMPONENT fifo_wc
	PORT
	(
		wclk		:	 IN STD_LOGIC;
		reset		:	 IN STD_LOGIC;
		write_enable		:	 IN STD_LOGIC;
		fifo_occu_in		:	 OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		full		:	 OUT STD_LOGIC;
		waddr		:	 OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		wen		:	 OUT STD_LOGIC;
		wptr		:	 OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		rptr_s		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

-- import rc
COMPONENT fifo_rc
	PORT
	(
		rclk		:	 IN STD_LOGIC;
		reset		:	 IN STD_LOGIC;
		read_enable		:	 IN STD_LOGIC;
		fifo_occu_out		:	 OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		empty		:	 OUT STD_LOGIC;
		raddr		:	 OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		ren		:	 OUT STD_LOGIC;
		rptr		:	 OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		wptr_s		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;


-- import sync
COMPONENT sync
	PORT
	(
		reset		:	 IN STD_LOGIC;
		inclk		:	 IN STD_LOGIC;
		outclk		:	 IN STD_LOGIC;
		ptr		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		ptr_sync		:	 OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

--- internal signals

signal waddr,raddr : STD_LOGIC_VECTOR (3 downto 0):= "0000";
signal wptr,rptr,wptr_s, rptr_s : STD_LOGIC_VECTOR(4 downto 0) := "00000";
signal wen,ren,full_int : std_logic := '0';


begin
-- PORT MAPS
wc : fifo_wc port map (wclk,reset,write_enable,fifo_occu_in,full_int,waddr,wen,wptr,rptr_s);
rc : fifo_rc port map (rclk,reset,read_enable,fifo_occu_out,empty,raddr,ren,rptr,wptr_s);

write_sync : sync port map (reset,wclk,rclk,wptr,wptr_s);
read_sync :  sync port map (reset,rclk,wclk,rptr,rptr_s);

ram : nsram port map (write_data_in,raddr,rclk,ren,waddr,wclk,wen,read_data_out);


mainLogic : process(reset,wclk)
		begin
			if(reset = '1') then
			-- reset logic
				
				--rptr <= (others => '0');
				--wptr <= (others => '0');
				--wptr_s <= (others => '0');
				--rptr_s <=  (others => '0');
				--waddr <= (others => '0');
				--raddr <= (others => '0');
				--wen <= '0';
				--ren <= '0';


			elsif rising_edge(wclk) then

			-- main part 

				--if(write_enable = '1' and full) then 

				--wen <= '1';

				--end if;

			-- end main part
		end if;
	end process mainLogic;


c : process(reset,write_enable,full_int)
		begin
			
			wen <= write_enable and not full_int;
			full <= full_int;
	end process c;	

end async_fifo_arch;
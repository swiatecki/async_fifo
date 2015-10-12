LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY async_fifo_tb_final  IS 
END ; 
 
ARCHITECTURE async_fifo_tb_final_arch OF async_fifo_tb_final IS
  SIGNAL read_data_out   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL fifo_occu_out   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL rclk   :  STD_LOGIC := '0' ; 
  SIGNAL write_enable   :  STD_LOGIC  ; 
  SIGNAL wclk   :  STD_LOGIC :='0' ; 
  SIGNAL write_data_in   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL read_enable   :  STD_LOGIC  ; 
  SIGNAL empty   :  STD_LOGIC  ; 
  SIGNAL full   :  STD_LOGIC  ; 
  SIGNAL fifo_occu_in   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL reset   :  STD_LOGIC  ; 


  COMPONENT async_fifo  
    PORT ( 
      read_data_out  : out std_logic_vector (7 downto 0) ; 
      fifo_occu_out  : out std_logic_vector (4 downto 0) ; 
      rclk  : in STD_LOGIC ; 
      write_enable  : in STD_LOGIC ; 
      wclk  : in STD_LOGIC ; 
      write_data_in  : in std_logic_vector (7 downto 0) ; 
      read_enable  : in STD_LOGIC ; 
      empty  : out STD_LOGIC ; 
      full  : out STD_LOGIC ; 
      fifo_occu_in  : out std_logic_vector (4 downto 0) ; 
      reset  : in STD_LOGIC ); 
  END COMPONENT ; 


SIGNAL data : std_logic_vector(7 downto 0);

BEGIN
  DUT  : async_fifo  
    PORT MAP ( 
      read_data_out   => read_data_out  ,
      fifo_occu_out   => fifo_occu_out  ,
      rclk   => rclk  ,
      write_enable   => write_enable  ,
      wclk   => wclk  ,
      write_data_in   => write_data_in  ,
      read_enable   => read_enable  ,
      empty   => empty  ,
      full   => full  ,
      fifo_occu_in   => fifo_occu_in  ,
      reset   => reset   ) ; 



-- reset

Process
	Begin
	 reset  <= '1'  ;
	wait for 100 ns ;
	 reset  <= '0'  ;

	wait;End Process;


-- WRITE CLOCK
 --Period = 60 ns
write_clk : Process
	Begin
	
    	wait for 4 ns ;
    	wclk <= not wclk;
	

End Process write_clk;


-- READ CLOCK
 --Period = 4 ns
  read_clk :  Process
	Begin

    	wait for 40 ns ;
    	rclk  <= not rclk ;
	
 End Process read_clk;


write_enable <= not full;

read_enable <= not empty;

write_data_in <= data;


stimulus : process(reset,wclk)
		begin
			if(reset = '1') then
			-- reset logic
				
				data <= (others => '0');
			
			elsif rising_edge(wclk) then
			
				
					if full = '0' then
					data <= data + '1';
					end if;
						
			end if;
	end process stimulus;



END;

LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY async_fifo_tb  IS 
END ; 
 
ARCHITECTURE async_fifo_tb_arch OF async_fifo_tb IS
  SIGNAL read_data_out   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL fifo_occu_out   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL rclk   :  STD_LOGIC  ; 
  SIGNAL write_enable   :  STD_LOGIC  ; 
  SIGNAL wclk   :  STD_LOGIC  ; 
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



-- "Constant Pattern"
-- Start Time = 100 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 reset  <= '1'  ;
	wait for 100 ns ;
	 reset  <= '0'  ;
	wait for 9900 ns ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 10 us, Period = 20 ns
  Process
	Begin
	 wclk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 499
	loop
	    wclk  <= '1'  ;
	   wait for 10 ns ;
	    wclk  <= '0'  ;
	   wait for 10 ns ;
-- 9990 ns, repeat pattern in loop.
	end  loop;
	 wclk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 10 us, Period = 15 ns
  Process
	Begin
	 rclk  <= '0'  ;
	wait for 8 ns ;
	for Z in 1 to 666
	loop
	    rclk  <= '1'  ;
	   wait for 7 ns ;
	    rclk  <= '0'  ;
	   wait for 8 ns ;
-- 9998 ns, repeat pattern in loop.
	end  loop;
	 rclk  <= '1'  ;
	wait for 2 ns ;
-- dumped values till 10 us
	wait;
 End Process;
END;

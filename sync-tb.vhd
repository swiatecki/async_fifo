LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY \sync-tb\  IS 
END ; 
 
ARCHITECTURE \sync-tb_arch\   OF \sync-tb\   IS
  SIGNAL inclk   :  STD_LOGIC  ; 
  SIGNAL ptr_sync   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL ptr   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL outclk   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  COMPONENT sync  
    PORT ( 
      inclk  : in STD_LOGIC ; 
      ptr_sync  : out std_logic_vector (4 downto 0) ; 
      ptr  : in std_logic_vector (4 downto 0) ; 
      outclk  : in STD_LOGIC ; 
      reset  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : sync  
    PORT MAP ( 
      inclk   => inclk  ,
      ptr_sync   => ptr_sync  ,
      ptr   => ptr  ,
      outclk   => outclk  ,
      reset   => reset   ) ; 



-- "Constant Pattern"
-- Start Time = 30 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 reset  <= '1'  ;
	wait for 30 ns ;
	 reset  <= '0'  ;
	wait for 970 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 10 ns
  Process
	Begin
	 inclk  <= '0'  ;
	wait for 5 ns ;
-- 5 ns, single loop till start period.
	for Z in 1 to 99
	loop
	    inclk  <= '1'  ;
	   wait for 5 ns ;
	    inclk  <= '0'  ;
	   wait for 5 ns ;
-- 995 ns, repeat pattern in loop.
	end  loop;
	 inclk  <= '1'  ;
	wait for 5 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 outclk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 49
	loop
	    outclk  <= '1'  ;
	   wait for 10 ns ;
	    outclk  <= '0'  ;
	   wait for 10 ns ;
-- 990 ns, repeat pattern in loop.
	end  loop;
	 outclk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 30 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 ptr  <= (others => '0');
	wait for 40 ns ;
	 ptr <= "01001";
	
-- dumped values till 1 us
	wait;
 End Process;









END;

entity test is
end entity;

architecture sim of test is
begin
	process is
		variable toma : integer := 10;
	begin
		while toma < 20 loop
			report "aaaaaaa";
			report integer'image(toma);
			wait for 1000 sec;
			toma := toma + 2;
		end loop;
		wait;
	end process;
end architecture;

entity test is
end entity;

architecture sim of test is
	signal test1 : integer := 0;
	signal test2 : integer := 0;
begin
	process is
	begin
		test1 <= test1 + 1;
		test2 <= test2 - 1;
		wait for 10 ns;
	end process;

	process is
	begin
		if test1 = test2 then
			report "They do be equal";
		end if;

		wait on test1, test2;
	end process;

	process(test1, test2) is
	begin
		if test1 = test2 then
			report "They do be equal 2 electric boogaloo";
		end if;
	end process;


end architecture;

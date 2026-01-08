entity test is
end entity;

architecture sim of test is
	signal test1 : integer := 0;
	signal test2 : integer := 10;
begin
	process is
	begin
		test1 <= test1 + 1;
		wait for 10 ns;
	end process;

	process is
	begin
		wait until test1 = test2;
		report "They equal" & integer'image(test1);
		wait;
	end process;

	process is
	begin
		wait on test1;
		report "It changed" & integer'image(test1);
		wait;
	end process;
end architecture;

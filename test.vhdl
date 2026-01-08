entity test is
end entity;

architecture sim of test is
	signal test1 : integer := 0;
begin
	process is
	begin
		test1 <= test1 + 1;
		wait for 10 ns;
	end process;

	process is
	begin
		if test1 = 14 then
			report "It do be 14";
		elsif test1 > 14 then
			wait;
		else
			report "It don't be bigger than 14";
		end if;

		wait on test1;
	end process;

end architecture;

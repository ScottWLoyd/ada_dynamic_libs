with Ada.Text_IO;

package body my_lib is

	procedure Do_Stuff is
	begin
		Ada.Text_IO.Put_Line("Hello DLL land!");
	end Do_Stuff;
		
	-- procedure Initialize_API is
		-- procedure Adainit;
		-- pragma Import(C, Adainit);		
	-- begin
		-- Adainit;
	-- end Initialize_API;
	
	-- procedure Finalize_API is
		-- procedure Adafinal;
		-- pragma Import(C, Adafinal);
	-- begin
		-- Adafinal;
	-- end Finalize_API;

end my_lib;
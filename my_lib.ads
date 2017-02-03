-- @TODO: do we need to create a seperate spec file which imports these as stated here:
-- https://gcc.gnu.org/onlinedocs/gcc-4.1.2/gnat_ugn_unw/Creating-a-Spec-for-Ada-DLLs.html#Creating-a-Spec-for-Ada-DLLs

package my_lib is

	procedure Do_Stuff;
	-- procedure Initialize_API;
	-- procedure Finalize_API;
	

-- This should be unncessary for Ada-Ada dynamic loading
-- Eff it, do it anyways
private

	pragma Export(C, Do_Stuff);
	-- pragma Export(C, Initialize_API);
	-- pragma Export(C, Finalize_API);
	
end my_lib;
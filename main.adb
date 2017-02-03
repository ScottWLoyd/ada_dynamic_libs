with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
with Ada.Directories; use Ada.Directories;
with System;
with Ada.Calendar;

procedure Main is
	
   type LPCSTR is access constant Interfaces.C.char;  --  winnt.h
   pragma Convention (C, LPCSTR);

   function LoadLibrary (lpLibFileName : LPCSTR) return System.Address;
   pragma Import (Stdcall, LoadLibrary, "LoadLibraryA");
   --  winbase.h :3619

   type PROC is access function return Interfaces.C.int;  --  windef.h :175
   pragma Convention (Stdcall, PROC);
   subtype FARPROC is PROC;  --  windef.h :173

   function GetProcAddress (hModule : System.Address; lpProcName : LPCSTR) return FARPROC;  --  winbase.h :997
   pragma Import (Stdcall, GetProcAddress, "GetProcAddress");  --  winbase.h :997
   
   function As_LPCSTR is new Ada.Unchecked_Conversion (Source => System.Address, Target => LPCSTR);
   
   S : Search_Type;
   D : Directory_Entry_Type;
   Only_Files : constant Filter_Type := (Ordinary_File => True, others => False);
   Dll_Name : constant String := "libtest.dll";
   C_Name : aliased constant String := Dll_Name & ASCII.nul;
   Proc_Name : aliased constant String := "do_stuff" & ASCII.nul;
   Waiting : Boolean := True;
begin

	while Waiting loop
	
		Start_Search(S, ".", Dll_Name, Only_Files);
		
		if More_Entries(S) then
				
			Get_Next_Entry(S, D);
			
			declare
				use Ada.Calendar;
				use type System.Address;
			
				Lib_Handle : System.Address := System.Null_Address;
				Do_Stuff_Handle : FARPROC;
				Ignored : Interfaces.C.int;
            begin
				--  Plug-in file is older than 5 seconds, we do not want to try
				--  loading a plug-in not yet fully compiled.

				if Modification_Time (D) < Clock - 5.0 then
			
					Waiting := False;
					Lib_Handle := LoadLibrary(As_LPCSTR(C_Name'Address));
					
					if Lib_Handle /= System.Null_Address then			
						
						Do_Stuff_Handle := GetProcAddress(Lib_Handle, As_LPCSTR(Proc_Name'Address));
						Ignored := Do_Stuff_Handle.all;
						
					end if;

				end if;
				
			end;
		
		end if;
		
	end loop;	

end Main;
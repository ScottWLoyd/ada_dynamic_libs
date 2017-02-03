pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (testmain, Spec_File_Name => "b__test.ads");
pragma Source_File_Name (testmain, Body_File_Name => "b__test.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body testmain is

   E103 : Short_Integer; pragma Import (Ada, E103, "system__os_lib_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "system__soft_links_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "system__exception_table_E");
   E088 : Short_Integer; pragma Import (Ada, E088, "ada__io_exceptions_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "ada__strings_E");
   E049 : Short_Integer; pragma Import (Ada, E049, "ada__strings__maps_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "ada__strings__maps__constants_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "ada__tags_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "ada__streams_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "interfaces__c_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exceptions_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "system__file_control_block_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "system__file_io_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "system__finalization_root_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__finalization_E");
   E062 : Short_Integer; pragma Import (Ada, E062, "system__object_reader_E");
   E042 : Short_Integer; pragma Import (Ada, E042, "system__dwarf_lines_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "system__secondary_stack_E");
   E037 : Short_Integer; pragma Import (Ada, E037, "system__traceback__symbolic_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "ada__text_io_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "my_lib_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E007 := E007 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         if E007 = 0 then
            F1;
         end if;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E098 := E098 - 1;
         if E098 = 0 then
            F2;
         end if;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure testfinal is

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      finalize_library;
   end testfinal;

   type No_Param_Proc is access procedure;

   procedure testinit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      if E014 = 0 then
         System.Soft_Links'Elab_Spec;
      end if;
      if E024 = 0 then
         System.Exception_Table'Elab_Body;
      end if;
      E024 := E024 + 1;
      if E088 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E088 := E088 + 1;
      if E047 = 0 then
         Ada.Strings'Elab_Spec;
      end if;
      E047 := E047 + 1;
      if E049 = 0 then
         Ada.Strings.Maps'Elab_Spec;
      end if;
      if E053 = 0 then
         Ada.Strings.Maps.Constants'Elab_Spec;
      end if;
      E053 := E053 + 1;
      if E090 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E087 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E087 := E087 + 1;
      if E064 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      if E026 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E026 := E026 + 1;
      if E106 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E106 := E106 + 1;
      if E101 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E101 := E101 + 1;
      if E099 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E099 := E099 + 1;
      if E062 = 0 then
         System.Object_Reader'Elab_Spec;
      end if;
      if E042 = 0 then
         System.Dwarf_Lines'Elab_Spec;
      end if;
      if E098 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E098 := E098 + 1;
      E064 := E064 + 1;
      if E090 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E090 := E090 + 1;
      E049 := E049 + 1;
      if E014 = 0 then
         System.Soft_Links'Elab_Body;
      end if;
      E014 := E014 + 1;
      if E103 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E103 := E103 + 1;
      if E018 = 0 then
         System.Secondary_Stack'Elab_Body;
      end if;
      E018 := E018 + 1;
      E042 := E042 + 1;
      E062 := E062 + 1;
      if E037 = 0 then
         System.Traceback.Symbolic'Elab_Body;
      end if;
      E037 := E037 + 1;
      if E007 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E007 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E007 := E007 + 1;
      E002 := E002 + 1;
   end testinit;

--  BEGIN Object file/option list
   --   C:\Users\sloyd3\Documents\src\Ada_Libraries\test_libraries\obj\my_lib.o
   --   -LC:\Users\sloyd3\Documents\src\Ada_Libraries\test_libraries\obj\
   --   -LC:/gnat/2016/lib/gcc/i686-pc-mingw32/4.9.4/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end testmain;

pragma Ada_95;
pragma Warnings (Off);
with System;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2016 (20160515-49)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#e36294db#;
   pragma Export (C, u00001, "mainB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#ddf3267e#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#c5dcd3d2#;
   pragma Export (C, u00005, "ada__calendarB");
   u00006 : constant Version_32 := 16#12a38fcc#;
   pragma Export (C, u00006, "ada__calendarS");
   u00007 : constant Version_32 := 16#da4d2671#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#4c8cceba#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#2da59038#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#5f84b5ab#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#b321486d#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00014, "system__parametersB");
   u00015 : constant Version_32 := 16#538f9d47#;
   pragma Export (C, u00015, "system__parametersS");
   u00016 : constant Version_32 := 16#0f0cb66d#;
   pragma Export (C, u00016, "system__secondary_stackB");
   u00017 : constant Version_32 := 16#86c45f51#;
   pragma Export (C, u00017, "system__secondary_stackS");
   u00018 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00018, "system__storage_elementsB");
   u00019 : constant Version_32 := 16#0066da3c#;
   pragma Export (C, u00019, "system__storage_elementsS");
   u00020 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#a31afbd0#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00022, "system__exception_tableB");
   u00023 : constant Version_32 := 16#700bf97a#;
   pragma Export (C, u00023, "system__exception_tableS");
   u00024 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00024, "system__exceptionsB");
   u00025 : constant Version_32 := 16#45c6fdce#;
   pragma Export (C, u00025, "system__exceptionsS");
   u00026 : constant Version_32 := 16#4c9e814d#;
   pragma Export (C, u00026, "system__exceptions__machineS");
   u00027 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00027, "system__exceptions_debugB");
   u00028 : constant Version_32 := 16#532f69fc#;
   pragma Export (C, u00028, "system__exceptions_debugS");
   u00029 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00029, "system__img_intB");
   u00030 : constant Version_32 := 16#2f7e70fa#;
   pragma Export (C, u00030, "system__img_intS");
   u00031 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00031, "system__tracebackB");
   u00032 : constant Version_32 := 16#73874efc#;
   pragma Export (C, u00032, "system__tracebackS");
   u00033 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00033, "system__traceback_entriesB");
   u00034 : constant Version_32 := 16#2dfe6648#;
   pragma Export (C, u00034, "system__traceback_entriesS");
   u00035 : constant Version_32 := 16#d2b6296c#;
   pragma Export (C, u00035, "system__traceback__symbolicB");
   u00036 : constant Version_32 := 16#dd19f67a#;
   pragma Export (C, u00036, "system__traceback__symbolicS");
   u00037 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00037, "ada__exceptions__tracebackB");
   u00038 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00038, "ada__exceptions__tracebackS");
   u00039 : constant Version_32 := 16#5d344636#;
   pragma Export (C, u00039, "system__crtlS");
   u00040 : constant Version_32 := 16#b6a35849#;
   pragma Export (C, u00040, "system__dwarf_linesB");
   u00041 : constant Version_32 := 16#44249c75#;
   pragma Export (C, u00041, "system__dwarf_linesS");
   u00042 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00042, "ada__charactersS");
   u00043 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00043, "ada__characters__handlingB");
   u00044 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00044, "ada__characters__handlingS");
   u00045 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00045, "ada__characters__latin_1S");
   u00046 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00046, "ada__stringsS");
   u00047 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00047, "ada__strings__mapsB");
   u00048 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00048, "ada__strings__mapsS");
   u00049 : constant Version_32 := 16#4a6f6ca4#;
   pragma Export (C, u00049, "system__bit_opsB");
   u00050 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00050, "system__bit_opsS");
   u00051 : constant Version_32 := 16#1923ecbb#;
   pragma Export (C, u00051, "system__unsigned_typesS");
   u00052 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00052, "ada__strings__maps__constantsS");
   u00053 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00053, "interfacesS");
   u00054 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00054, "system__address_imageB");
   u00055 : constant Version_32 := 16#8c490d02#;
   pragma Export (C, u00055, "system__address_imageS");
   u00056 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00056, "system__img_unsB");
   u00057 : constant Version_32 := 16#86d7d04c#;
   pragma Export (C, u00057, "system__img_unsS");
   u00058 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00058, "system__ioB");
   u00059 : constant Version_32 := 16#b3e76777#;
   pragma Export (C, u00059, "system__ioS");
   u00060 : constant Version_32 := 16#cf909744#;
   pragma Export (C, u00060, "system__object_readerB");
   u00061 : constant Version_32 := 16#6942daaf#;
   pragma Export (C, u00061, "system__object_readerS");
   u00062 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00062, "interfaces__cB");
   u00063 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00063, "interfaces__cS");
   u00064 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00064, "system__val_lliB");
   u00065 : constant Version_32 := 16#b7817698#;
   pragma Export (C, u00065, "system__val_lliS");
   u00066 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00066, "system__val_lluB");
   u00067 : constant Version_32 := 16#63d1bbc9#;
   pragma Export (C, u00067, "system__val_lluS");
   u00068 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00068, "system__val_utilB");
   u00069 : constant Version_32 := 16#810526c6#;
   pragma Export (C, u00069, "system__val_utilS");
   u00070 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00070, "system__case_utilB");
   u00071 : constant Version_32 := 16#09acf9ef#;
   pragma Export (C, u00071, "system__case_utilS");
   u00072 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00072, "interfaces__c_streamsB");
   u00073 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00073, "interfaces__c_streamsS");
   u00074 : constant Version_32 := 16#931ff6be#;
   pragma Export (C, u00074, "system__exception_tracesB");
   u00075 : constant Version_32 := 16#097ab0a2#;
   pragma Export (C, u00075, "system__exception_tracesS");
   u00076 : constant Version_32 := 16#ce7de326#;
   pragma Export (C, u00076, "system__win32S");
   u00077 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00077, "system__wch_conB");
   u00078 : constant Version_32 := 16#36d8b2ea#;
   pragma Export (C, u00078, "system__wch_conS");
   u00079 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00079, "system__wch_stwB");
   u00080 : constant Version_32 := 16#1bc99eeb#;
   pragma Export (C, u00080, "system__wch_stwS");
   u00081 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00081, "system__wch_cnvB");
   u00082 : constant Version_32 := 16#396f0819#;
   pragma Export (C, u00082, "system__wch_cnvS");
   u00083 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00083, "system__wch_jisB");
   u00084 : constant Version_32 := 16#b91f1138#;
   pragma Export (C, u00084, "system__wch_jisS");
   u00085 : constant Version_32 := 16#a99e1d66#;
   pragma Export (C, u00085, "system__os_primitivesB");
   u00086 : constant Version_32 := 16#a72a814e#;
   pragma Export (C, u00086, "system__os_primitivesS");
   u00087 : constant Version_32 := 16#b6166bc6#;
   pragma Export (C, u00087, "system__task_lockB");
   u00088 : constant Version_32 := 16#4c2fa756#;
   pragma Export (C, u00088, "system__task_lockS");
   u00089 : constant Version_32 := 16#1a9147da#;
   pragma Export (C, u00089, "system__win32__extS");
   u00090 : constant Version_32 := 16#40e91d23#;
   pragma Export (C, u00090, "ada__directoriesB");
   u00091 : constant Version_32 := 16#eb9f206b#;
   pragma Export (C, u00091, "ada__directoriesS");
   u00092 : constant Version_32 := 16#8f218b8f#;
   pragma Export (C, u00092, "ada__calendar__formattingB");
   u00093 : constant Version_32 := 16#67ade573#;
   pragma Export (C, u00093, "ada__calendar__formattingS");
   u00094 : constant Version_32 := 16#e3cca715#;
   pragma Export (C, u00094, "ada__calendar__time_zonesB");
   u00095 : constant Version_32 := 16#6dc27f8f#;
   pragma Export (C, u00095, "ada__calendar__time_zonesS");
   u00096 : constant Version_32 := 16#d763507a#;
   pragma Export (C, u00096, "system__val_intB");
   u00097 : constant Version_32 := 16#6500ba07#;
   pragma Export (C, u00097, "system__val_intS");
   u00098 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00098, "system__val_unsB");
   u00099 : constant Version_32 := 16#098b0180#;
   pragma Export (C, u00099, "system__val_unsS");
   u00100 : constant Version_32 := 16#faa9a7b2#;
   pragma Export (C, u00100, "system__val_realB");
   u00101 : constant Version_32 := 16#d38ce729#;
   pragma Export (C, u00101, "system__val_realS");
   u00102 : constant Version_32 := 16#6c05c057#;
   pragma Export (C, u00102, "system__exn_llfB");
   u00103 : constant Version_32 := 16#91db2be4#;
   pragma Export (C, u00103, "system__exn_llfS");
   u00104 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00104, "system__float_controlB");
   u00105 : constant Version_32 := 16#cd59d304#;
   pragma Export (C, u00105, "system__float_controlS");
   u00106 : constant Version_32 := 16#7dd5f64f#;
   pragma Export (C, u00106, "system__powten_tableS");
   u00107 : constant Version_32 := 16#4fedafb0#;
   pragma Export (C, u00107, "ada__directories__validityB");
   u00108 : constant Version_32 := 16#d34bdf62#;
   pragma Export (C, u00108, "ada__directories__validityS");
   u00109 : constant Version_32 := 16#e5480ede#;
   pragma Export (C, u00109, "ada__strings__fixedB");
   u00110 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00110, "ada__strings__fixedS");
   u00111 : constant Version_32 := 16#0b4a75ae#;
   pragma Export (C, u00111, "ada__strings__searchB");
   u00112 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00112, "ada__strings__searchS");
   u00113 : constant Version_32 := 16#5130abd7#;
   pragma Export (C, u00113, "ada__strings__unboundedB");
   u00114 : constant Version_32 := 16#4c956ffe#;
   pragma Export (C, u00114, "ada__strings__unboundedS");
   u00115 : constant Version_32 := 16#920eada5#;
   pragma Export (C, u00115, "ada__tagsB");
   u00116 : constant Version_32 := 16#13ca27f3#;
   pragma Export (C, u00116, "ada__tagsS");
   u00117 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00117, "system__htableB");
   u00118 : constant Version_32 := 16#a96723d2#;
   pragma Export (C, u00118, "system__htableS");
   u00119 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00119, "system__string_hashB");
   u00120 : constant Version_32 := 16#0b3948ac#;
   pragma Export (C, u00120, "system__string_hashS");
   u00121 : constant Version_32 := 16#5b9edcc4#;
   pragma Export (C, u00121, "system__compare_array_unsigned_8B");
   u00122 : constant Version_32 := 16#84a6e1b5#;
   pragma Export (C, u00122, "system__compare_array_unsigned_8S");
   u00123 : constant Version_32 := 16#5f72f755#;
   pragma Export (C, u00123, "system__address_operationsB");
   u00124 : constant Version_32 := 16#3ea92e0b#;
   pragma Export (C, u00124, "system__address_operationsS");
   u00125 : constant Version_32 := 16#6a86c9a5#;
   pragma Export (C, u00125, "system__storage_pools__subpoolsB");
   u00126 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00126, "system__storage_pools__subpoolsS");
   u00127 : constant Version_32 := 16#6abe5dbe#;
   pragma Export (C, u00127, "system__finalization_mastersB");
   u00128 : constant Version_32 := 16#7659a9f2#;
   pragma Export (C, u00128, "system__finalization_mastersS");
   u00129 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00129, "system__img_boolB");
   u00130 : constant Version_32 := 16#d87ce1d3#;
   pragma Export (C, u00130, "system__img_boolS");
   u00131 : constant Version_32 := 16#cf417de3#;
   pragma Export (C, u00131, "ada__finalizationS");
   u00132 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00132, "ada__streamsB");
   u00133 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00133, "ada__streamsS");
   u00134 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00134, "ada__io_exceptionsS");
   u00135 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00135, "system__finalization_rootB");
   u00136 : constant Version_32 := 16#6257e3a8#;
   pragma Export (C, u00136, "system__finalization_rootS");
   u00137 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00137, "system__storage_poolsB");
   u00138 : constant Version_32 := 16#0e480e95#;
   pragma Export (C, u00138, "system__storage_poolsS");
   u00139 : constant Version_32 := 16#9aad1ff1#;
   pragma Export (C, u00139, "system__storage_pools__subpools__finalizationB");
   u00140 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00140, "system__storage_pools__subpools__finalizationS");
   u00141 : constant Version_32 := 16#12218162#;
   pragma Export (C, u00141, "system__atomic_countersB");
   u00142 : constant Version_32 := 16#99f9bdb5#;
   pragma Export (C, u00142, "system__atomic_countersS");
   u00143 : constant Version_32 := 16#221eebf6#;
   pragma Export (C, u00143, "system__machine_codeS");
   u00144 : constant Version_32 := 16#f4e1c091#;
   pragma Export (C, u00144, "system__stream_attributesB");
   u00145 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00145, "system__stream_attributesS");
   u00146 : constant Version_32 := 16#8c84abfa#;
   pragma Export (C, u00146, "system__file_attributesS");
   u00147 : constant Version_32 := 16#f70a12f1#;
   pragma Export (C, u00147, "system__os_constantsS");
   u00148 : constant Version_32 := 16#b29d05bd#;
   pragma Export (C, u00148, "system__file_ioB");
   u00149 : constant Version_32 := 16#8ad4715d#;
   pragma Export (C, u00149, "system__file_ioS");
   u00150 : constant Version_32 := 16#9dd55695#;
   pragma Export (C, u00150, "system__os_libB");
   u00151 : constant Version_32 := 16#bf5ce13f#;
   pragma Export (C, u00151, "system__os_libS");
   u00152 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00152, "system__stringsB");
   u00153 : constant Version_32 := 16#531a815e#;
   pragma Export (C, u00153, "system__stringsS");
   u00154 : constant Version_32 := 16#d03a0a90#;
   pragma Export (C, u00154, "system__file_control_blockS");
   u00155 : constant Version_32 := 16#933fac2f#;
   pragma Export (C, u00155, "system__regexpB");
   u00156 : constant Version_32 := 16#0e9737f4#;
   pragma Export (C, u00156, "system__regexpS");
   u00157 : constant Version_32 := 16#d5bfa9f3#;
   pragma Export (C, u00157, "ada__text_ioB");
   u00158 : constant Version_32 := 16#c3f01c15#;
   pragma Export (C, u00158, "ada__text_ioS");
   u00159 : constant Version_32 := 16#ee101ba4#;
   pragma Export (C, u00159, "system__memoryB");
   u00160 : constant Version_32 := 16#74d8f60c#;
   pragma Export (C, u00160, "system__memoryS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.machine_code%s
   --  system.atomic_counters%b
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  system.task_lock%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.task_lock%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.val_int%s
   --  system.val_lli%s
   --  system.val_llu%s
   --  system.val_real%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_real%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.os_constants%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.win32%s
   --  system.win32.ext%s
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.time_zones%s
   --  ada.calendar.time_zones%b
   --  ada.calendar.formatting%s
   --  system.exception_traces%s
   --  system.exception_traces%b
   --  system.file_attributes%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.secondary_stack%s
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  system.file_io%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.fixed%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.characters.handling%b
   --  system.secondary_stack%b
   --  system.dwarf_lines%b
   --  system.object_reader%b
   --  ada.calendar.formatting%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  ada.directories%s
   --  ada.directories.validity%s
   --  ada.directories.validity%b
   --  system.regexp%s
   --  system.regexp%b
   --  ada.directories%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  main%b
   --  END ELABORATION ORDER


end ada_main;

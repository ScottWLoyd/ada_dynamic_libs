# ada_dynamic_libs
A simple example of how to load and call a procedure in an Ada dynamic library.

The GNAT documentation can be a little obtuse and finding a complete example on the web that dynamically loads the library and locates a procedure at runtime is impossible, at least at the time I am creating this.

Key things to take away:
  - use 'pragma Export(C)' for the subprograms you want exported
    - if you don't declare the export name, you must lowercase the name when you call GetProcAddress() since this is the default C export style
  - set the Library_Auto_Init property to true in the project file
  - set the Library_Interface to a unit declaring the subprograms to export
  - ensure the DLL, the ALI, and the spec file are present where you will be importing from

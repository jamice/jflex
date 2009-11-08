%%

%unicode 5.0
%public
%class UnicodeDecimalDigit1_5_0

%type int
%standalone

%include src/test/resources/common-unicode-enumerated-property-java

%%

<<EOF>> { printOutput(); return 1; }
[:digit:] { setCurCharPropertyValue("Nd"); }
[^[:digit:]] { setCurCharPropertyValue("Not-Nd"); }
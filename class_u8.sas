option nodate nonumber;

ods escapechar='$';

/*Blank is a temp dataset*/
data blank;
	blank = "";
run;

ods results off;
ods rtf file=".\class.doc" style=ThreeLinesU startpage=no
wordstyle="{\s1 t1;\s2 t2;\s3 t3;\s4 t4;\s5 t5;\s6 t6;\s7 t7;\s8 t8;\s9 t9;}";

*Section title;
%let sec_title=学生名册;
proc report data=blank
	style(report)={pretext="\b\ql\outlinelevel1\s2 %sysfunc(tranwrd(%sysfunc(unicodec(&sec_title.,NCR)),%nrstr(&#),\u))"};
	column blank;
	define blank / noprint;
run;

%let sec_title=初一年级;
proc report data=blank
	style(report)={pretext="\b\ql\outlinelevel2\s3 %sysfunc(tranwrd(%sysfunc(unicodec(&sec_title.,NCR)),%nrstr(&#),\u))"};
	column blank;
	define blank / noprint;
run;

*Table title and body;
%let tfl_title=表 {\field{\fldinst{STYLEREF t3 \\s }}}.{\field{\fldinst{ SEQ 表 \\* ARABIC\\r 1 }}} 初一(1)班级信息;
proc report data=sashelp.class
	style(report)={pretext="\outlinelevel4 %sysfunc(tranwrd(%sysfunc(unicodec(&tfl_title.,NCR)),%nrstr(&#),\u))"};
	column sex name age height weight;
run;

%let tfl_title=表 {\field{\fldinst{STYLEREF t3 \\s }}}.{\field{\fldinst{ SEQ 表 \\* ARABIC\\s 1 }}} 初一(2)班级信息;
proc report data=sashelp.class
	style(report)={pretext="\outlinelevel4 %sysfunc(tranwrd(%sysfunc(unicodec(&tfl_title.,NCR)),%nrstr(&#),\u))"};
	column sex name age height weight;
run;

*Section title;
%let sec_title=初二年级;
proc report data=blank
	style(report)={pretext="\b\ql\outlinelevel2\s3 %sysfunc(tranwrd(%sysfunc(unicodec(&sec_title.,NCR)),%nrstr(&#),\u))"};
	column blank;
	define blank / noprint;
run;

*Table title and body;
%let tfl_title=表 {\field{\fldinst{STYLEREF t3 \\s }}}.{\field{\fldinst{ SEQ 表 \\* ARABIC\\r 1 }}} 初二(1)班级信息;
proc report data=sashelp.class
	style(report)={pretext="\outlinelevel4 %sysfunc(tranwrd(%sysfunc(unicodec(&tfl_title.,NCR)),%nrstr(&#),\u))"};
	column sex name age height weight;
run;

%let tfl_title=表 {\field{\fldinst{STYLEREF t3 \\s }}}.{\field{\fldinst{ SEQ 表 \\* ARABIC\\s 1 }}} 初二(2)班级信息;
proc report data=sashelp.class
	style(report)={pretext="\outlinelevel4 %sysfunc(tranwrd(%sysfunc(unicodec(&tfl_title.,NCR)),%nrstr(&#),\u))"};
	column sex name age height weight;
run;

ods rtf close;
ods results on;

%option noyywrap
%{
#include<stdio.h>
%}
%%
[\n\t];
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.+[a-zA-Z]+{2,4}+ {printf("Email V�lido:\n");}
.|\n {printf("Formato no v�lido:\n"}
%%
int main(){
printf("Ingrese el Email:\n");
yylex();return 0;
}
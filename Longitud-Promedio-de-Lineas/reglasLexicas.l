%option noyywrap
%{
	int nl, nc;	
%}
%%
\n  ++nl;
.	 ++nc;
%%
int main(void){
	int i;
	yylex();
	printf("%.1f\n", nl?nc/(float)nl:0);
	return 0;
}


#include <stdio.h>
#define DEFINED "defined"
#define STR "#include <stdio.h>%2$c#define DEFINED %4$cdefined%4$c%2$c#define STR %4$c%1$s%4$c%2$c#define FT(x)int main(){char *str = STR;FILE *f = fopen(x, %4$cw%4$c);if (f != NULL){fprintf(f,str,str,10,9,34);fclose(f);}return (0);}%2$c/*%2$c%3$ccomment%2$c*/%2$cFT(%4$cGrace_kid.c%4$c)"
#define FT(x)int main(){char *str = STR;FILE *f = fopen(x, "w");if (f != NULL){fprintf(f,str,str,10,9,34);fclose(f);}return (0);}
/*
	comment
*/
FT("Grace_kid.c")
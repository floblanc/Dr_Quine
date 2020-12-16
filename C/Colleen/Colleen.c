#include <stdio.h>

/*
	Out main comment
*/

void other_fun()
{
	return;
}

int main()
{
	/*
		In main comment
	*/
	char *str = "#include <stdio.h>%2$c%2$c/*%2$c%3$cOut main comment%2$c*/%2$c%2$cvoid other_fun()%2$c{%2$c%3$creturn;%2$c}%2$c%2$cint main()%2$c{%2$c%3$c/*%2$c%3$c%3$cIn main comment%2$c%3$c*/%2$c%3$cchar *str = %4$c%1$s%4$c;%2$c%3$cother_fun();%2$c%3$cprintf(str,str,10,9,34);%2$c%3$creturn (0);%2$c}";
	other_fun();
	printf(str,str,10,9,34);
	return (0);
}
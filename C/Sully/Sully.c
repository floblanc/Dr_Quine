#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main()
{
	int i = 5;
	if (i <= 0)
		return (0);
	char tmp[2048];
	snprintf(tmp, sizeof(tmp), "Sully_%d.c", i);
	char num[2048];
	snprintf(num, sizeof(num), "%d", ((access(tmp, F_OK) == 0) ? i - 1 : i));
	char file_name[2048];
	snprintf(file_name, sizeof(file_name), "Sully_%s.c", num);;
	FILE *f = fopen(file_name, "w");
	if (f != NULL)
	{
		char *str = "#include <stdio.h>%3$c#include <stdlib.h>%3$c#include <string.h>%3$c#include <unistd.h>%3$c%3$cint main()%3$c{%3$c%4$cint i = %2$s;%3$c%4$cif (i == 0)%3$c%4$c%4$creturn (0);%3$c%4$cchar tmp[2048];%3$c%4$csnprintf(tmp, sizeof(tmp), %5$cSully_%%d.c%5$c, i);%3$c%4$cchar num[2048];%3$c%4$csnprintf(num, sizeof(num), %5$c%%d%5$c, ((access(tmp, F_OK) == 0) ? i - 1 : i));%3$c%4$cchar file_name[2048];%3$c%4$csnprintf(file_name, sizeof(file_name), %5$cSully_%%s.c%5$c, num);;%3$c%4$cFILE *f = fopen(file_name, %5$cw%5$c);%3$c%4$cif (f != NULL)%3$c%4$c{%3$c%4$c%4$cchar *str = %5$c%1$s%5$c;%3$c%4$c%4$cfprintf(f,str,str,num,10,9,34);%3$c%4$c%4$cfclose(f);%3$c%4$c%4$cint len_cmd = strlen(%5$cclang -Wall -Wextra -Werror -o Sully_ Sully_.c; ./Sully_%5$c) + (strlen(num) * 3) + 1;%3$c%4$c%4$cchar cmd[len_cmd];%3$c%4$c%4$csnprintf(cmd, len_cmd, %5$cclang -Wall -Wextra -Werror -o Sully_%%s Sully_%%s.c; ./Sully_%%s%5$c, num, num, num);%3$c%4$c%4$csystem(cmd);%3$c%4$c}%3$c%4$creturn (0);%3$c}";
		fprintf(f,str,str,num,10,9,34);
		fclose(f);
		int len_cmd = strlen("clang -Wall -Wextra -Werror -o Sully_ Sully_.c; ./Sully_") + (strlen(num) * 3) + 1;
		char cmd[len_cmd];
		snprintf(cmd, len_cmd, "clang -Wall -Wextra -Werror -o Sully_%s Sully_%s.c; ./Sully_%s", num, num, num);
		system(cmd);
	}
	return (0);
}
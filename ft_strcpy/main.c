#include <stdio.h>
#include <string.h>

extern char *ft_strcpy(char *dest, const char *src);

int main() {
	char s1[9];
	char *s2 = "hello";
	printf("%s\n", ft_strcpy(s1, "coulomb\n"));
	printf("%s\n", ft_strcpy(s1, "grigaux"));
	printf("%s\n", ft_strcpy(s1, "le"));
	printf("%s\n", ft_strcpy(s1, "rmrftout"));
	return (0);
}

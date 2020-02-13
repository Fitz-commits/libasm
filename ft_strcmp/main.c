#include <stdio.h>

extern int ft_strcmp(char *s1, const char *s2);

int main() {
	printf("%d\n", ft_strcmp("salut", "salut "));
	/*printf("%d\n", ft_strcmp(s1, "grigaux"));
	printf("%d\n", ft_strcmp(s1, "le"));
	printf("%d\n", ft_strcmp(s1, "rmrftout"));*/
	return (0);
}

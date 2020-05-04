#include <stdlib.h>
#include <stdio.h>

extern int ft_read(int fd, char *buf, int nb);
extern int ft_write(int fd, char *s, int nb);
extern int ft_strcmp(char *s1, char *s2);
extern int ft_strlen(char *s);
extern char *ft_strcpy(char *dst, char *src);
extern char *ft_strdup(char *s);

int		main()
{
	printf("%d\n", ft_strcmp("bon", "bo"));
}

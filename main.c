#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
extern int ft_read(int fd, char *buf, int nb);
extern int ft_write(int fd, char *s, int nb);
extern int ft_strcmp(char *s1, char *s2);
extern int ft_strlen(char *s);
extern char *ft_strcpy(char *dst, char *src);
extern char *ft_strdup(char *s);

int		main()
{
	char *buf = "salut";
	int fd;
	int value;
	
	fd = open("lol", O_WRONLY | O_CREAT
		| O_TRUNC , 0666);
	value = ft_write(4, buf, 5);
	printf("%d\n%d\n", errno, value);
	value = write(4, buf, 5);
	printf("%d\n%d\n", errno, value);
}

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
	char *buf = ft_strdup("salut");
	char poule[20];
	int fd;
	int fd2;
	int value;

	fd2 = open ("./main.c", O_RDONLY);
	value = ft_read(12, NULL, 10);
	if (value > 0 )
		poule[value] = 0;
	printf("%s\n%d\n%d\n", poule, errno, value);
	value = read(15, NULL, 10);
	if (value > 0 )
		poule[value] = 0;
	printf("%s\n%d\n%d\n", poule, errno, value);
	fd = open("lol", O_WRONLY | O_CREAT
		| O_TRUNC , 0666);
	value = ft_write(fd, NULL, 5);
	printf("%d\n%d\n", errno, value);
	value = write(fd, NULL, 5);
	printf("%d\n%d\n", errno, value);
}

#include <stdio.h>
#include <errno.h>
size_t	ft_strlen(char *s);
char	*ft_strcpy(char *dst, const char *src);
size_t	ft_write(int fd, const void *buf, size_t count);
size_t	ft_read(int fd, void *buf, size_t count);
int main(void)
{
	char str[15];

	ft_read(0, &str, 5);
	printf("%s", str);
	// ft_write(1111,"Hello,world!\n",13);
	// if (errno)
	// 	perror("oshibka");
// 	printf("%s\n", ft_strcpy(str, "blab"));
// 	char src[100] = "hedhejhjeh";
// 	char dst[100];
// 	dst[0] = 0;
// 	ft_strcpy(dst,src);
// 	printf("Src : %s\n",dst);
 }
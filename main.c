#include "libs.h"

int	main(void)
{
	char	*buf;
	char	*src;
	char	dst[14];
	char	str[15];

	buf = "test";
	printf("result cmp = %d\n", ft_strcmp(NULL, NULL));
	printf("result cmp = %d\n", ft_strcmp("524", "523"));
	printf("result cmp = %d\n\n", ft_strcmp("523", "524"));
	printf("result len = %zu\n\n", ft_strlen(buf));
	printf("result dup = %s\n\n", ft_strdup(buf));
	ft_read(0, str, 5);
	printf("read = %s\n", str);
	ft_write(1, "write result\n", 13);
	ft_write(1111, "error!\n\n", 13);
	if (errno)
		perror("error");
	printf("\n");
	src = "well done ^_^";
	dst[0] = 0;
	ft_strcpy(dst, src);
	printf("result cpy = %s\n", dst);
}

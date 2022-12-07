#ifndef LIBS_H
# define LIBS_H

# include <stdio.h>
# include <errno.h>

size_t	ft_strlen(char *s);
char	*ft_strcpy(char *dst, const char *src);
size_t	ft_write(int fd, const void *buf, size_t count);
size_t	ft_read(int fd, void *buf, size_t count);
char	*ft_strdup(const char *src);
int		ft_strcmp(const char *str1, const char *str2);

#endif

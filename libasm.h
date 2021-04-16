#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <string.h>
# include <ctype.h>
# include <sys/types.h>
# include <errno.h>
# include <fcntl.h>
typedef struct 	s_list
{
	void *data;
	struct s_list *next;
}				t_list;

size_t ft_strlen(const char *s);
char *ft_strcpy(char *dest, const char *src);
int ft_strcmp(const char *s1, const char *s2);
int ft_putchar(const char c);
void ft_putstr(const char *str);
void ft_putnbr(int nb);
int	ft_isalpha(int c);
int ft_isdigit(int c);
int ft_isalnum(int c);
int ft_isascii(int c);
int ft_isprint(int c);
int ft_toupper(int c);
int ft_tolower(int c);
ssize_t ft_write(int fd, const char *buf, size_t count);
ssize_t ft_read(int fd, const char *buf, size_t count);
char *ft_strdup(const char *s);
void ft_list_push_front(t_list **begin_list, void *data);
int ft_list_size(t_list *begin_list);
#endif

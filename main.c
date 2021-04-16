#include "libasm.h"

void test_strlen()
{
	printf("%lu\n", ft_strlen(""));
	printf("%lu\n", strlen(""));

	printf("%lu\n", ft_strlen("coucou\n"));
	printf("%lu\n", strlen("coucou\n"));

	printf("%lu\n", ft_strlen("Je suis une longue phrase pour tester si tout se passe bien avec des char * assez long"));
	printf("%lu\n", strlen("Je suis une longue phrase pour tester si tout se passe bien avec des char * assez long"));
}

void test_strcpy()
{
	char str[100];
	char str2[100];

	ft_strcpy(str, "coucou toto phrase longue");
	strcpy(str2, "coucou toto phrase longue");
	printf("%s\n%s\n", str, str2);
	bzero(str, 100);
	bzero(str, 100);

	ft_strcpy(str, "");
	strcpy(str2, "");
	printf("|%s|\n|%s|\n", str, str2);
	bzero(str, 100);
	bzero(str, 100);

	ft_strcpy(str, "c");
	strcpy(str2, "c");
	printf("%s\n%s\n", str, str2);
}

int main(void)
{
	t_list *temp;
	temp = NULL;
//	t_list *temp2;
	//test_strlen();
	//test_strcpy();
	//printf("ret = %d\n", ft_strcmp("coudcou", "coucou"));
	//printf("ret = %d\n", strcmp("coucou", "coucou"));
	//ft_putchar('d');
	//ft_putstr("coucou\n");
	//ft_putnbr(11556);
	//printf("%d\n", ft_tolower('-'));
	//printf("%d\n", tolower('-'));
	/*
	if (ft_write(1, "coucou", 1) == -1)
	{
		printf("error = %s\n", strerror(errno));
	}
	if (ft_read(-1, "coucou", 1) == -1)
	{
		printf("error = %s\n", strerror(errno));
	}
	char *test;
	test = ft_strdup("coucou");
	printf("%s\n", test);*/

	ft_list_push_front(&temp, (void *)"coucou");
	//temp->next = NULL;
	ft_list_push_front(&temp, (void *)"test");
	ft_list_push_front(&temp, (void *)"test");
	printf("%d\n", ft_list_size(temp));
	while (temp)
	{
		printf("%s\n", temp->data);
		temp = temp->next;
	}
	return (0);
}
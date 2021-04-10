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

int main(void)
{
	char str[100];

	test_strlen();
	ft_strcpy(str, "coucou toto phrase longue");
	printf("%s\n", str);
	return (0);
}
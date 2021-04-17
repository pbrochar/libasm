#include "libasm.h"

void test_strlen()
{
	printf("======= ft_strlen =======\n");
	printf("ret_ft : %lu\n", ft_strlen(""));
	printf("ret_of : %lu\n", strlen(""));

	printf("ret_ft : %lu\n", ft_strlen("coucou\n"));
	printf("ret_of : %lu\n", strlen("coucou\n"));

	printf("ret_ft : %lu\n", ft_strlen("Je suis une longue phrase pour tester si tout se passe bien avec des char * assez long"));
	printf("ret_of : %lu\n", strlen("Je suis une longue phrase pour tester si tout se passe bien avec des char * assez long"));
	printf("========================\n\n");
}

void test_strcpy()
{
	char str[100];
	char str2[100];
	printf("======= ft_strcpy =======\n");
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
	printf("==================\n\n");
}

void test_strcmp(void)
{
	printf("======= ft_strcmp =======\n");
	printf("for strcmp(\"coucou\", \"coucou\")\n");
	printf("ret_ft = %d\n", ft_strcmp("coucou", "coucou"));
	printf("ret_of = %d\n", strcmp("coucou", "coucou"));

	printf("for strcmp(\"Acoucou\", \"coucou\")\n");
	printf("ret_ft = %d\n", ft_strcmp("Acoucou", "coucou"));
	printf("ret_of = %d\n", strcmp("Acoucou", "coucou"));

	printf("for strcmp(\"\", \"\")\n");
	printf("ret_ft = %d\n", ft_strcmp("", ""));
	printf("ret_of = %d\n", strcmp("", ""));

	printf("for strcmp(\"toto\", \"\")\n");
	printf("ret_ft = %d\n", ft_strcmp("toto", ""));
	printf("ret_of = %d\n", strcmp("toto", ""));

	printf("for strcmp(\"\", \"toto\")\n");
	printf("ret_ft = %d\n", ft_strcmp("", "toto"));
	printf("ret_of = %d\n", strcmp("", "toto"));
	printf("========================\n\n");
}

void test_write(void)
{
	printf("======= ft_write =======\n");
	if (ft_write(1, "coucou", 6) == -1)
		printf("error = %s\n", strerror(errno));
	printf("\nbad file descriptor : \n");
	if (ft_write(-1, "coucou", 1) == -1)
		printf("error = %s\n", strerror(errno));
	printf("bad length :\n");
	if (ft_write(1, "coucou", -11) == -1)
		printf("error = %s\n", strerror(errno));
	printf("empty string :\n");
	if (ft_write(1, "", 1) == -1)
		printf("error = %s\n", strerror(errno));
	printf("length inferior at strlen : \n");
	if (ft_write(1, "coucou", 1) == -1)
		printf("error = %s\n", strerror(errno));
	printf("\n=========================\n\n");
}

void test_read(void)
{
	char buf[70];
	int fd;
	printf("======= ft_read =======\n");
	fd = open("test.txt", O_RDONLY);
	printf("normal : \n");
	if (ft_read(fd, buf, 70) == -1)
		printf("error = %s\n", strerror(errno));
	printf("%s\n", buf);
	printf("bad file descriptor : \n");
	if (ft_read(-1, "coucou", 1) == -1)
		printf("error = %s\n", strerror(errno));
	printf("=====================\n\n");
}

void test_strdup(void)
{
	char *str;

	printf("======= ft_strdup =======\n");
	str = ft_strdup("coucou");
	printf("|%s|\n", str);
	free(str);
	str = ft_strdup("");
	printf("|%s|\n", str);
	printf("=======================\n");
}

int main(void)
{

	test_strlen();
	test_strcpy();
	test_strcmp();
	test_write();
	test_read();
	test_strdup();
}

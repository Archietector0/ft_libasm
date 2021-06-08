#include "libasm.h"

int main()
{
	const char	*s;
	const char	*s1;
	const char	*s2;
	char		*dest;
	const char	*src;
	const char	*sdup;

	
	s = "Arseniy";
	s1 = "\200";
	s2 = "\0";
	src = "Hello world";
	sdup = "Arseniy is superman";

	printf("\n\n\n---FT_STRLEN---\n\n\n");
	printf("MINE: %li\n", ft_strlen(s));
	printf("ORIG: %li\n", strlen(s));

	printf("\n\n\n---FT_STRCMP---\n\n\n");
	if (s1 == NULL || s2 == NULL)
		printf("Opai");
	printf("MINE: %i\n", ft_strcmp(s1, s2));
	printf("ORIG: %i\n", strcmp(s1, s2));

	printf("\n\n\n---FT_STRCPY---\n\n\n");
	dest = (char *)malloc(ft_strlen(src) + 1);
	if (dest == NULL)
		return (0);
	printf("MINE: %s-\n", ft_strcpy(dest, src));
	printf("ORIG: %s-\n", strcpy(dest, src));
	free(dest);

	printf("\n\n\n---FT_STRDUP---\n\n\n");
	printf("MINE: %s\n", ft_strdup(sdup));
	printf("ORIG: %s\n", strdup(sdup));

}

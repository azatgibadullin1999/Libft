NAME = libft.a

FUNCTION =	ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c\
ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c\
ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c\
ft_strnstr.c ft_strncmp.c ft_atoi.c ft_isalpha.c\
ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c\
ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c\
ft_substr.c ft_strtrim.c ft_strmapi.c ft_itoa.c\
ft_strjoin.c ft_split.c ft_putchar_fd.c ft_putstr_fd.c\
ft_putendl_fd.c ft_putnbr_fd.c

BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c\
ft_lstmap.c

OFILE = $(BONUS:.c=.o) $(FUNCTION:.c=.o)

HEAD = libft.h

all: $(NAME) $(OFILE) 

$(NAME):
	gcc -Wall -Wextra -Werror -c $(FUNCTION) $(BONUS) -I libft.h
	ar rc $(NAME) $(OFILE)
	ranlib $(NAME)

%.o : %.c
	gcc -Wall -Wextra -Werror -o $@ -c $<

bonus :

clean: 
	rm -f $(OFILE)
	rm -f $(BONUS:.c=.o)
fclean: clean
	rm -f $(NAME)
re: fclean all

.PHONY: all clean fclean re %.o

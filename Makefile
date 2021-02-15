# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: mverbrug <mverbrug@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/01/21 16:58:23 by mverbrug      #+#    #+#                  #
#    Updated: 2021/01/21 17:14:44 by mverbrug      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a
SRCS		=	ft_memset.c			\
				ft_bzero.c			\
				ft_memcpy.c			\
				ft_memccpy.c		\
				ft_memmove.c		\
				ft_memchr.c			\
				ft_memcmp.c			\
				ft_strlen.c			\
				ft_strlcpy.c		\
				ft_strlcat.c		\
				ft_strchr.c			\
				ft_strrchr.c		\
				ft_strnstr.c		\
				ft_strncmp.c		\
				ft_atoi.c			\
				ft_isalpha.c		\
				ft_isdigit.c		\
				ft_isalnum.c		\
				ft_isascii.c		\
				ft_isprint.c		\
				ft_toupper.c		\
				ft_tolower.c		\
				ft_calloc.c			\
				ft_strdup.c			\
				ft_substr.c			\
				ft_strjoin.c		\
				ft_strtrim.c		\
				ft_split.c			\
				ft_itoa.c			\
				ft_strmapi.c		\
				ft_putchar_fd.c		\
				ft_putstr_fd.c		\
				ft_putendl_fd.c		\
				ft_putnbr_fd.c

SRCS_BONUS	=	ft_lstnew.c			\
				ft_lstadd_front.c	\
				ft_lstsize.c		\
				ft_lstlast.c		\
				ft_lstadd_back.c	\
				ft_lstdelone.c		\
				ft_lstclear.c		\
				ft_lstiter.c

OBJS		=	$(SRCS:.c=.o)
OBJS_BONUS	=	$(SRCS_BONUS:.c=.o)
FLAGS		=	-Wall -Wextra -Werror
RM			=	rm -f
LIBC		=	ar -rcs
HEADER_FILE	=	libft.h
CC			=	gcc

ifdef WITH_BONUS
OBJS_FILES = $(OBJS) $(OBJS_BONUS)
else
OBJS_FILES = $(OBJS)
endif

all: 		$(NAME)

$(NAME):	$(OBJS_FILES)
			$(LIBC) $(NAME) $(OBJS_FILES)

%.o:		%.c $(HEADER_FILE)
			$(CC) -c $(FLAGS) $< -o $@

bonus:
			$(MAKE) WITH_BONUS=1 all

clean:
			${RM} $(OBJS) $(OBJS_BONUS)

fclean:		clean
			${RM} $(NAME)

re:			fclean all

.PHONY:		all bonus clean fclean re

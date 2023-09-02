# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gde-jesu <gde-jesu@student.42.rio>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/22 14:50:00 by gde-jesu          #+#    #+#              #
#    Updated: 2023/09/02 15:41:27 by gde-jesu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Library Name #
NAME = libft.a

# Compiling Variables #
CC = cc
RM = rm -rf
LIBC = ar -rcs
CFLAGS = -Wall -Wextra -Werror -c

# Sources Variables #
MANDATORY_SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS_SRCS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
ft_lstmap.c

# Objects Variables #
MANDATORY_OBJ = $(MANDATORY_SRCS:.c=.o)
BONUS_OBJ = $(BONUS_SRCS:.c=.o)

# Colors #
GREEN = \e[32m
YELLOW = \e[33m
RESET = \e[0m
_SUCCESS = ✅ $(GREEN)Successfully compiled$(RESET)
_INFO = ℹ️  $(YELLOW)Info$(RESET)

# Functions #
$(NAME):
	@$(CC) $(CFLAGS) -I. $(MANDATORY_SRCS)
	@$(LIBC) $(NAME) $(MANDATORY_OBJ)
	@printf "$(_SUCCESS) is ready.\n"

all: $(NAME)

bonus:
	@$(CC) $(CFLAGS) -I. $(BONUS_SRCS)
	@$(LIBC) $(NAME) $(BONUS_OBJ)
	@printf "$(_SUCCESS) is ready.\n"

clean:
		@$(RM) $(MANDATORY_OBJ) $(BONUS_OBJ)
		@printf "$(_INFO) cleaning done.\n"

fclean: clean
		@$(RM) $(NAME)

re: fclean all

.PHONY:	all clean fclean re 

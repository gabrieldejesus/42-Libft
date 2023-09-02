# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gde-jesu <gde-jesu@student.42.rio>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/22 14:50:00 by gde-jesu          #+#    #+#              #
#    Updated: 2023/09/01 22:35:06 by gde-jesu         ###   ########.fr        #
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
MANDATORY_SRCS = ft_strlen.c
BONUS_SRCS = ft_lstnew.c

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
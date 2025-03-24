# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aboutale <aboutale@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/14 18:27:44 by aboutale          #+#    #+#              #
#    Updated: 2024/11/09 15:11:38 by aboutale         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_printf.c printformat.c ft_putnbr_fd.c ft_putnbr_base_fd.c countnumbers.c ft_putnbr_basex_fd.c \
unsignedcountnumbers.c unsignedputnbr.c ft_putchar_fd.c ft_putstr_fd.c \

OBJS := ${SRCS:.c=.o} 

NAME = libftprintf.a

CFLAGS = -Wall -Wextra -Werror -g

CC = cc

all: ${NAME}

${NAME}: ${OBJS} 
	ar rcs ${NAME} ${OBJS}

.o: .c
	${CC} ${CFLAGS} -c $< -o $@
	@echo Compliling : $<

clean :
	rm -rf ${OBJS} ${OBJS_BONUS}

fclean : clean
	rm -rf ${NAME}

re : fclean all
.PHONY : all clean fclean re bonus 

